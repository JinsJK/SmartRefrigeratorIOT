// FreeRTOS
#include <FreeRTOS.h>
#include <task.h>

// Input/output
#include <stdio.h>
#include <inttypes.h>

#include <bl602_adc.h>  //  ADC driver
#include <bl_adc.h>     //  ADC HAL
#include <bl_dma.h>     //  DMA HAL
#include "adc.h"

// Include math library for exponential and logarithmic functions
#include <math.h>

// ADC definitions
#define ADC_GAIN1 ADC_PGA_GAIN_1
#define ADC_GAIN2 ADC_PGA_GAIN_1

// must be between 500 and 16,000
#define ADC_FREQUENCY 4096
#define NUMBER_OF_SAMPLES 1024

#define SINGLE_CHANNEL_CONVERSION_MODE 1

/* function prototypes (needed for compiler, functions are implemented below) */

void init_adc(uint8_t pin);
uint32_t read_adc();

// Constants for the MQ-4 sensor (Approximated from the datasheet)
const float A = -0.318;  // slope
const float B = 1.133;   // y-intercept

// Calibration details
const float calibratedPpm = 5000.0; // methane concentration used for calibration
const float loadResistance = 20000.0; // load resistance in ohms (20KΩ)

// Function to calculate methane concentration (PPM) based on ADC value
int calculate_methane_ppm(int adcValue) {
    int adcMax = 4095;  // Max ADC value for 12-bit ADC

    // Calculate sensor resistance (Rs) in the detected gas
    float sensorVoltage = (float)adcValue / adcMax * 3.3; // Assuming 3.3V as reference voltage
    float sensorResistance = (3.3 - sensorVoltage) / sensorVoltage * loadResistance;

    // Calculate Rs/Ro ratio based on calibration
    float RsRoRatio = sensorResistance / (loadResistance / (calibratedPpm / 10000.0)); 

    // Calculate PPM using the formula from the datasheet
    float ppm = exp((log(RsRoRatio) * A) + B);
    return (int)ppm;
}

int ppm_value;
/* ADC task */
void task_adc(void *pvParameters)
{
  printf("ADC task started\r\n");
  
  // Set GPIO pin for ADC. You can change this to any pin that supports ADC and has a sensor connected.
  init_adc(5);
  
  printf("ADC initialized\r\n");
  
  // wait until initialization finished
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  
  // constantly print current ADC values
  while (1) {
    int adcValue = read_adc();
    printf("Current value of digitized analog signal: %d\r\n", adcValue);

    int estimatedPPM = calculate_methane_ppm(adcValue);
    printf("Estimated Methane PPM: %d\n", estimatedPPM);
    ppm_value = estimatedPPM;
    vTaskDelay(5000 / portTICK_PERIOD_MS);
  } 
  
  // should never happen but would delete the task and free allocated resources
  vTaskDelete(NULL);

}

int get_airquality(){
    printf("AirQuality started updated");
   // temperature_value = read_dht22_data();
    return ppm_value;
}

static int set_adc_gain(uint32_t gain1, uint32_t gain2) {
  // read configuration hardware register
  uint32_t reg = BL_RD_REG(AON_BASE, AON_GPADC_REG_CONFIG2);
  
  // set ADC gain bits
  reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_PGA1_GAIN, gain1);
  reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_PGA2_GAIN, gain2);
  
  // set chop mode
  if (gain1 != ADC_PGA_GAIN_NONE || gain2 != ADC_PGA_GAIN_NONE) {
    reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_CHOP_MODE, 2);
  } else {
    reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_CHOP_MODE, 1);
  }
  
  // enable ADC amplifier
  reg = BL_CLR_REG_BIT(reg, AON_GPADC_PGA_VCMI_EN);
  if (gain1 != ADC_PGA_GAIN_NONE || gain2 != ADC_PGA_GAIN_NONE) {
    reg = BL_SET_REG_BIT(reg, AON_GPADC_PGA_EN);
  } else {
    reg = BL_CLR_REG_BIT(reg, AON_GPADC_PGA_EN);
  }
  
  // update ADC configuration hardware register
  BL_WR_REG(AON_BASE, AON_GPADC_REG_CONFIG2, reg);
  return 0;
}


// NOTE: pin must be of the following 4, 5, 6, 9, 10, 11, 12, 13, 14, 15
// Otherwise you may damage your device!
void init_adc(uint8_t pin) {
  // Ensure valid pin was selected
  switch (pin) {
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      break;
    default:
      printf("Invalid pin selected for ADC\r\n");
      return;
  }
  
  // set frequency and single channel conversion mode
  bl_adc_freq_init(SINGLE_CHANNEL_CONVERSION_MODE, ADC_FREQUENCY);
  
  // initialize GPIO pin for single channel conversion mode
  bl_adc_init(SINGLE_CHANNEL_CONVERSION_MODE, pin);
  
  // enable ADC gain
  set_adc_gain(ADC_GAIN1, ADC_GAIN2);

  // initialize DMA for the ADC channel and for single channel conversion mode
  bl_adc_dma_init(SINGLE_CHANNEL_CONVERSION_MODE, NUMBER_OF_SAMPLES);

  // configure GPIO pin as ADC input
  bl_adc_gpio_init(pin);

  // mark pin and ADC as configured
  int channel = bl_adc_get_channel_by_gpio(pin);
  adc_ctx_t *ctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
  ctx -> chan_init_table |= (1 << channel);

  // start reading process
  bl_adc_start();
}

uint32_t read_adc() {
  // array storing samples statically
  static uint32_t adc_data[NUMBER_OF_SAMPLES];
  
  // get DMA context for ADC channel to read data
  adc_ctx_t *ctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
  
  // return if sampling failed or did not finish
  if (ctx -> channel_data == NULL) {
    return 0;
  }
  
  // copy read samples from memory written dynamically by DMA to static array
  memcpy(
    (uint8_t*) adc_data,
    (uint8_t*) (ctx -> channel_data),
    sizeof(adc_data)
  );
  
  // calculate mean value
  uint32_t sum = 0;
  for (int i = 0; i < NUMBER_OF_SAMPLES; i++) {
    // scale up sample
  int32_t scaled = adc_data[i] & 0x0FFF;     
  sum += scaled;
  }
  
  return sum/NUMBER_OF_SAMPLES;
}
