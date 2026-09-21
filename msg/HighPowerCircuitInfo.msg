# High power circuit health status

int8 OK=0
int8 ERROR=1

# Communication with the BMS and freshness of its data
int8 bms

# Battery measurements and BMS faults
int8 battery

# ESC communication, voltage, and water leak status
int8 esc_lf
int8 esc_lb
int8 esc_rb
int8 esc_rf
