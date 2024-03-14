#ifndef TT_CGI_H
#define TT_CGI_H 1

/* show errors if dependencies are not included */

#if !LWIP_HTTPD_CUSTOM_FILES
#error This needs LWIP_HTTPD_CUSTOM_FILES
#endif

#if !LWIP_HTTPD_DYNAMIC_HEADERS
#error This needs LWIP_HTTPD_DYNAMIC_HEADERS
#endif

#if !LWIP_HTTPD_CGI
#error This needs LWIP_HTTPD_CGI
#endif

/* endpoints */
#define RELAY_ENDPOINT "/relay.html"
#define ERROR_404_ENDPOINT "/404.html"

/* setters */
#define SET_RELAY_ENDPOINT "/set_relay"

/* getters */
#define GET_SCAN_STATUS_ENDPOINT "/scan_state.json"

#define CLEAR_SCAN_STATUS_ENDPOINT "/scan_clear.json"

#define GET_RELAY_ON "/relay_on.html"
#define GET_RELAY_OFF "/relay_off.html"

#define GET_AIRQUALITY "/airquality.json"

/* initialization functions */
void custom_files_init(void);
void cgi_init(void);

#endif
