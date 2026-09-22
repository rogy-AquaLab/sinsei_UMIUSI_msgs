# VESC BMS-specific state not represented by sensor_msgs/BatteryState

std_msgs/Header header

# Power switch state
uint8 POWER_SWITCH_UNKNOWN=0
uint8 POWER_SWITCH_INITIALIZING=1
uint8 POWER_SWITCH_OFF=2
uint8 POWER_SWITCH_PRECHARGE=3
uint8 POWER_SWITCH_ON=4
uint8 POWER_SWITCH_FAULT=5

# Fault flags
uint32 FAULT_NONE=0
uint32 FAULT_PRECHARGE=1
uint32 FAULT_SHORT_CIRCUIT=2
uint32 FAULT_SWITCH_OVER_TEMPERATURE=4
uint32 FAULT_CHARGE_OVERCURRENT=8

# Essential BMS state
float32 state_of_health       # (0.0 ~ 1.0)
float32 cell_voltage_min      # [V]
float32 cell_voltage_max      # [V]
float32 cell_temperature_max  # [degC]

bool charging
bool balancing
bool charge_allowed

# Index corresponds to sensor_msgs/BatteryState.cell_voltage
bool[] cell_balancing

# Other electrical measurements
float32 charger_voltage  # [V]

# Temperature sensors. Unavailable values are NaN.
float32 balance_ic_temperature       # [degC]
float32 cell_temperature_min         # [degC]
float32 mosfet_temperature           # [degC]
float32 ambient_temperature          # [degC]
float32[] additional_temperatures    # [degC]

# Humidity sensor. Unavailable values are NaN.
float32 humidity_sensor_temperature  # [degC]
float32 relative_humidity            # [%RH]

# Coulomb and energy counters
float32 net_consumed_charge       # [Ah], positive when discharged
float32 net_consumed_energy       # [Wh], positive when discharged
float32 total_charged_charge      # [Ah]
float32 total_charged_energy      # [Wh]
float32 total_discharged_charge   # [Ah]
float32 total_discharged_energy   # [Wh]

# Harmony-specific status
uint8 power_switch_state
uint32 fault_flags
uint8 data_version
string status_text
