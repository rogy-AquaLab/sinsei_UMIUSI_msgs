# Thruster output
# ThrusterRunnable ... { esc: bool, servo: bool }

ThrusterRunnable runnable
float64          duty_cycle  # (-1.0 ~ 1.0)
# **DEGREES** (-90.0 ~ 90.0)。radではない。
# 受け側 (sinsei_umiusi_control の thruster_controller) はこの値を単位変換なしで
# `can::VescModel::make_servo_angle_frame(deg)` に渡し、そこで `(deg + 90) / 180` に写す。
float64          angle       # [deg] (-90.0 ~ 90.0)
