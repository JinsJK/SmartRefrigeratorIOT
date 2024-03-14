#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <lwip/apps/httpd.h>

#include "cgi.h"
#include "scanner.h"


/* hello task */
void task_httpd(void *pvParameters)
{
  /* wait for half a second */
  printf("Starting up httpd\r\n");
  
  httpd_init();
  
 
  /* initialize CGI */
  custom_files_init();
  cgi_init();

  //getscanner();


  
  while(1) {
    printf("httpd keepalive\r\n");
    vTaskDelay(5*60*1000);
  }
  
  /* will never happen */
  vTaskDelete(NULL);
}
