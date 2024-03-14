#include <stdio.h>
#include <bl_uart.h>
#include "bl_gpio.h"  // Include the GPIO library header
#include <stdint.h>
#include <stdio.h>

#define DHT22_PIN 17  // GPIO pin connected to the DHT22


void init_gpio_system() {
    // Initialize the GPIO system
    bl_gpio_enable_output(DHT22_PIN, 0, 0);  // No pull-up, no pull-down
}

void read_dht22_data() {
    uint8_t data[5] = {0};
    //printf("bl_gpio_output_set Started /n");
    // Send start signal
    bl_gpio_output_set(DHT22_PIN, 0);
    BL602_Delay_US(1000); // 1 ms
    bl_gpio_output_set(DHT22_PIN, 1);
    BL602_Delay_US(30);  // 20-40 microseconds

    // Change to input
    bl_gpio_enable_input(DHT22_PIN, 0, 0);

    //printf("bl_gpio_enable_input Started \n");

    // Read response (80μs low, 80μs high)
    while (bl_gpio_input_get_value(DHT22_PIN) == 1);
    while (bl_gpio_input_get_value(DHT22_PIN) == 0);
    while (bl_gpio_input_get_value(DHT22_PIN) == 1);

    //printf("40 bits Started \n");

    // Read 40 bits of data
    for (int i = 0; i < 40; i++) {
        while (bl_gpio_input_get_value(DHT22_PIN) == 0); // Start of bit

        BL602_Delay_US(30);  // Duration of high pulse determines bit value

        if (bl_gpio_input_get_value(DHT22_PIN)) {
            data[i / 8] |= (1 << (7 - (i % 8)));
        }

        // Wait for end of bit
        while (bl_gpio_input_get_value(DHT22_PIN) == 1);
    }

    //printf("Process Started \n");

    // Process data
    uint16_t humidity = (data[0] << 8) | data[1];
    uint16_t temperature = (data[2] << 8) | data[3];
    uint8_t checksum = data[4];

    // Print values
    //printf("Humidity: %d.%d %%\n", humidity / 10, humidity % 10);
    printf("\rTemperature: %d.%d C\n", temperature / 10, temperature % 10);
    //printf("Checksum: %d\n", checksum);
}

void bfl_main(void) {
    bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);

      // Initialize the GPIO system

    while (1) {

      //printf("Temperature Started \n");
        init_gpio_system();
        read_dht22_data();
        // Add a delay here to prevent reading too frequently
        BL602_Delay_MS(2000); // Example: 2 seconds delay
    }

  
}
