#ifndef SCANNER_DEFS_H
#define SCANNER_DEFS_H
/* Relay pin*/
#define SCANNER_PIN 1

/* function to apply current relay_state*/
void getscanner();
char* getbarcode();
int clearbarcode();
#endif