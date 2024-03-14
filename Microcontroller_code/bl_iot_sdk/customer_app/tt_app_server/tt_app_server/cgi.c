#include "lwip/apps/httpd.h"
#include "lwip/opt.h"
#include "lwip/apps/fs.h"
#include "lwip/def.h"
#include "lwip/mem.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <bl_gpio.h>
#include "cJSON.h"
#include "cgi.h"
#include "relay.h"
#include "scanner.h"
#include "adc.h"


static const char *
cgi_handler_relay(int iIndex, int iNumParams, char *pcParam[], char *pcValue[]) {
    printf("iIndex: %d, iNumParams: %d, pcParam: %s, pcValue: %s\r\n", iIndex, iNumParams, pcParam[0], pcValue[0]);

    if (iNumParams == 2) {
        if (!strcmp(pcParam[0], "comp") && !strcmp(pcValue[0], "fan")) {
            uint8_t state = strtol(pcValue[1], NULL, 10);
            state = state ? RELAY_ON : RELAY_OFF;
            relay_state.state_relay= state;
            printf("State: %d\r\n", state);
            apply_relay_state(); // Apply relay state by using GPIO pins
        } else {
            return ERROR_404_ENDPOINT;
        }
    } else {
        return ERROR_404_ENDPOINT;
    }
    return RELAY_ENDPOINT;
}

static const tCGI cgi_handlers[] = {
    {SET_RELAY_ENDPOINT, cgi_handler_relay}
};

int fs_open_custom(struct fs_file *file, const char *name) {
    cJSON *json_response = NULL;
    char *response = NULL;

    if (!strcmp(name, RELAY_ENDPOINT)) {
        response = (char *)calloc(150, sizeof(char *));
        if (relay_state.state_relay == RELAY_OFF) {
            strcat(response, "<a href=\"" SET_RELAY_ENDPOINT "?comp=fan&state=1\">Turn on Fan</a></br>");
        } else {
            strcat(response, "<a href=\"" SET_RELAY_ENDPOINT "?comp=fan&state=0\">Turn off Fan</a></br>");
        }
    }   
    else if (!strcmp(name,GET_SCAN_STATUS_ENDPOINT))
    {
    json_response = cJSON_CreateObject();

    char* barcode = getbarcode();
    printf("Barcode %s\r\n", barcode);
    int inputLength = strlen(barcode);
    int substringLength=13;
    for (int i = 0; i < inputLength; i += substringLength) {
        // Extract a substring of length `substringLength`
        char substring[substringLength + 1]; // +1 for null-terminator
        strncpy(substring, barcode + i, substringLength);
        substring[substringLength] = '\0'; // Null-terminate the substring
        printf("Substring: %s\n", substring);
        long long int num = strtoll(substring, NULL, 10);
        char key[10]; // Adjust the size as needed
        snprintf(key, sizeof(key), "%d", i/13);
        cJSON_AddNumberToObject(json_response, key,num);

    }
    
    response = cJSON_PrintUnformatted(json_response);
    }
    else if (!strcmp(name,CLEAR_SCAN_STATUS_ENDPOINT))
    {
      int value = clearbarcode();
      json_response = cJSON_CreateObject();
      cJSON_AddNumberToObject(json_response,"cleared",value);
      response = cJSON_PrintUnformatted(json_response);
    }
    else if (!strcmp(name,GET_AIRQUALITY))
    {
      int value = get_airquality();
      json_response = cJSON_CreateObject();
      cJSON_AddNumberToObject(json_response,"AirQuality",value);
      response = cJSON_PrintUnformatted(json_response);
    } 

    // else if (!strcmp(name,GET_AIRQUALITY))
    // {
    //   get_temperature();
    //   json_response = cJSON_CreateObject();
    //   cJSON_AddNumberToObject(json_response,"AirQuality",0);
    //   response = cJSON_PrintUnformatted(json_response);
    // } 
 
    
    else {
        return 0; // Unknown URI
    }

    int response_size = strlen(response);
    memset(file, 0, sizeof(struct fs_file));
    file->pextension = mem_malloc(response_size);
    if (file->pextension != NULL) {
        memcpy(file->pextension, response, response_size);
        file->data = (const char *)file->pextension;
        file->len = response_size;
        file->index = file->len;
        file->flags = FS_FILE_FLAGS_HEADER_PERSISTENT;
    }
    free(response);
    return file->pextension != NULL ? 1 : 0;
}

void fs_close_custom(struct fs_file *file) {
    if (file && file->pextension) {
        mem_free(file->pextension);
        file->pextension = NULL;
    }
}

int fs_read_custom(struct fs_file *file, char *buffer, int count) {
    LWIP_UNUSED_ARG(file);
    LWIP_UNUSED_ARG(buffer);
    LWIP_UNUSED_ARG(count);
    return FS_READ_EOF;
}

void custom_files_init(void) {
   printf("Initializing module for generating JSON output\r\n"); 
}

void cgi_init(void) {
   printf("Initializing module for CGI\r\n"); 
    http_set_cgi_handlers(cgi_handlers, LWIP_ARRAYSIZE(cgi_handlers));
}
