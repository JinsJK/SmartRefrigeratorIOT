#include <FreeRTOS.h>
#include <task.h>

#include <stdio.h>

#include <bl_dma.h>
#include <bl_gpio.h>
#include <bl_irq.h>
#include <bl_sec.h>
#include <bl_sys_time.h>
#include <bl_uart.h>
#include <hal_boot2.h>
#include <hal_board.h>
#include <hal_hwtimer.h>

#include <blog.h>
#include <lwip/tcpip.h>

#include "relay.h"
/* Define heap regions */
extern uint8_t _heap_start;
extern uint8_t _heap_size;
extern uint8_t _heap_wifi_start;
extern uint8_t _heap_wifi_size;

static HeapRegion_t xHeapRegions[] =
    {
        {&_heap_start, (unsigned int)&_heap_size},
        {&_heap_wifi_start, (unsigned int)&_heap_wifi_size},
        {NULL, 0},
        {NULL, 0}};


#define DHT_STACK_SIZE 512
/* Size of the stack for the task */
#define ADC_STACK_SIZE 512


/* main function, execution starts here */
void bfl_main(void)
{
  /* Define information containers for tasks */
  static StackType_t wifi_stack[1024];
  static StaticTask_t wifi_task;

  static StackType_t httpd_stack[512];
  static StaticTask_t httpd_task;

  static StackType_t dht_stack[DHT_STACK_SIZE];
  static StaticTask_t dht_task;


  static StackType_t scan_stack[512];
  static StaticTask_t scan_task;

    /* Set up ADC reading task */
  static StackType_t adc_stack[ADC_STACK_SIZE];
  static StaticTask_t adc_task;

  static StackType_t temperature_stack[DHT_STACK_SIZE];
  static StaticTask_t temperature_task;


  /* Initialize UART
   * Ports: 16+7 (TX+RX)
   * Baudrate: 2 million
   */
  bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);
  printf("[SYSTEM] Starting up!\r\n");

  /* (Re)define Heap */
  vPortDefineHeapRegions(xHeapRegions);

  /* Initialize system */
  blog_init();
  bl_irq_init();
  bl_sec_init();
  bl_dma_init();
  hal_boot2_init();
  hal_board_cfg(0);

  /* Configure Relay pins as GPIO output */
  bl_gpio_enable_output(RELAY_PIN, 0, 0);


  /* Set relay to low */
  relay_state.state_relay = RELAY_OFF;

  apply_relay_state();

  /* Start tasks */

  //START TEMPERATURE
  // printf("[SYSTEM] Starting Temperature task\r\n");
  // extern void task_temperature(void *pvParameters); 

  // /* Create the task */
  // xTaskCreateStatic(task_temperature,(char*)"temperature", DHT_STACK_SIZE,NULL,30,temperature_stack,&temperature_task);

  //START AIR QUALITY
  printf("[SYSTEM] Starting Air quality task\r\n");
  extern void task_adc(void *pvParameters); 

  /* Create the task */
  xTaskCreateStatic(task_adc,(char*)"adc", ADC_STACK_SIZE,NULL,12,adc_stack,&adc_task);
  


  printf("[SYSTEM] Starting scan task\r\n");
   extern void task_scan(void *pvParameters);
  /* Create the task */
   xTaskCreateStatic(task_scan,(char*)"SCAN",512,NULL,6,scan_stack,&scan_task);


  printf("[SYSTEM] Starting httpd task\r\n");
  extern void task_httpd(void *pvParameters);
  xTaskCreateStatic(task_httpd, (char *)"httpd", 512, NULL, 10, httpd_stack, &httpd_task);

  printf("[SYSTEM] Starting WiFi task\r\n");
  extern void task_wifi(void *pvParameters);
  xTaskCreateStatic(task_wifi, (char *)"wifi", 1024, NULL, 16, wifi_stack, &wifi_task);

  /* Start TCP/IP stack */
  printf("[SYSTEM] Starting TCP/IP stack\r\n");
  tcpip_init(NULL, NULL);

  /* Start scheduler */
  printf("[SYSTEM] Starting scheduler\r\n");
  vTaskStartScheduler();
}
