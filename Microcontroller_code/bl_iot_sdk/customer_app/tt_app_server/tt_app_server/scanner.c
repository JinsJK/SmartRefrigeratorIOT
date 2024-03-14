#include <stdio.h>
#include <stdlib.h>  
#include <bl_gpio.h>
#include <bl_uart.h>
#include <string.h>

#include "scanner.h"
#include <stdlib.h> 
#include <FreeRTOS.h>
#include <task.h>
#define MAX_BARCODE_LENGTH 256
char barcode[MAX_BARCODE_LENGTH];
char concatenatedBarcode[2000];
int barcode_index = 0;

// Assuming a maximum length of 100 for the barcode
int concatenatedBarcodeIndex = 0;

void getscanner()
{
    // UART configuration
    bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);
    printf("----Scanner Started ---");
    uint32_t baudrate = 9600; // Match the baud rate of the GM65 scanner
    uint8_t uart_id = SCANNER_PIN; // Assuming UART0 is used
    uint8_t tx_pin = 4/* Your chosen TX pin number */;
    uint8_t rx_pin = 3/* Your chosen RX pin number */;
    uint8_t cts_pin = 255/* Your chosen CTS pin number, if used */;
    uint8_t rts_pin = 255/* Your chosen RTS pin number, if used */;

    // Initialize the UART
    bl_uart_init(uart_id, tx_pin, rx_pin, cts_pin, rts_pin, baudrate);
   // printf("bl_uart_init ---");

    bl_uart_int_rx_enable(uart_id);
    //printf("bl_uart_int_rx_enable ---");
    
    // Register RX callback
  // bl_uart_int_rx_notify_register(uart_id, uart_rx_callback, NULL);
    //printf("bl_uart_int_rx_notify_register ---");


    // Enable UART RX interrupt

    // Main loop
    for (;;) {
        // Read one byte from UART Port
        int ch = bl_uart_data_recv(SCANNER_PIN);
        if (ch < 0) {
            continue; // Loop until we receive something
        }

        // Stop and process when we receive carriage return (CR, ASCII 0x0D)
        if (ch == '\r') {
            barcode[barcode_index] = '\0'; // Null-terminate the string
            printf("Barcode: %s\n", barcode); // Print the barcode
            strcat(concatenatedBarcode, barcode); // Concatenate the barcode value
            barcode_index = 0; // Reset the index for the next barcode
            continue;
        }


        // Append the character to the barcode buffer if it's a digit
        if (ch >= '0' && ch <= '9' && barcode_index < MAX_BARCODE_LENGTH - 1) {
            barcode[barcode_index++] = (char)ch;
        }
    }

}

void task_scan(void *pvParameters)
{
  printf("scan task started\r\n");
 
  getscanner();
  
 
  // should never happen but would delete the task and free allocated resources
  vTaskDelete(NULL);
}

char* getbarcode(){
    printf("Barcode: %s\n", barcode); // Print the barcode    
    printf("Concatenated Barcode: %s\n", concatenatedBarcode);
    return concatenatedBarcode;
}

int clearbarcode(){
    printf("Cleared the barcode set"); // Print the barcode    
    memset(concatenatedBarcode, '\0', sizeof(concatenatedBarcode));
    return 0;
}