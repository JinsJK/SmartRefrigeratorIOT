#include <stdio.h>
#include <bl_gpio.h>

#include "relay.h"

void apply_relay_state()
{
    printf("Applying states: relay: %d \r\n",relay_state.state_relay);
    bl_gpio_output_set(RELAY_PIN, relay_state.state_relay);

}