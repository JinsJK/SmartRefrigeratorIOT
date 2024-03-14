#ifndef RELAY_DEFS_H
#define RELAY_DEFS_H
/* Relay pin*/
#define RELAY_PIN 17


#define RELAY_ON 0
#define RELAY_OFF 1


struct relay_state {
   uint8_t state_relay;
} relay_state;

/* function to apply current relay_state*/
void apply_relay_state();
#endif