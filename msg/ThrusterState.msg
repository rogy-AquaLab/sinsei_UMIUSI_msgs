# Thruster state
# ThrusterMode ... { esc: int8, servo: int8 }

ThrusterMode mode
float64      duty_cycle               # (-1.0 ~ 1.0)
float64      commanded_angle           # [rad]
bool         estimated_angle_available  # Whether estimated_angle is available
float64      estimated_angle           # [rad], NaN when unavailable
float64      rpm
