# Thruster state
# ThrusterMode ... { esc: int8, servo: int8 }

ThrusterMode mode
float64      duty_cycle  # (-1.0 ~ 1.0)
# **DEGREES** (-90.0 ~ 90.0)。radではない。
# なお、これは**指令のエコー**であって実測のサーボ角ではない。サーボには位置の
# フィードバック経路が無く (state interfaceはesc/rpm, esc/voltage, esc/water_leakedのみ)、
# thruster_controllerが出力した角度がそのまま返る。
float64      angle       # [deg] (-90.0 ~ 90.0)
float64      rpm
