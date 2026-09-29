# Attitude target for the attitude controller.
# Roll/pitch are commanded as an absolute attitude; yaw is commanded as a rate.

std_msgs/Header header              # frame_id: reference frame the attitude is expressed in (gravity-aligned, not body-fixed)

geometry_msgs/Quaternion attitude   # Target roll/pitch attitude; yaw component should be 0
float64                  yaw_rate   # [rad/s]

# Heading hold. Default false keeps the plain rate control above, with no state.
#
#   false -> true   the heading measured at that instant is latched and becomes the target
#   while true      the controller holds that heading, and `yaw_rate` SLEWS it
#                   (latched += yaw_rate * dt) instead of being a plain rate command,
#                   so a small correction needs no toggling
#   true -> false   the latch is dropped
#
# If the heading error exceeds the controller's re-latch threshold (90 deg by default) the
# controller assumes the IMU heading jumped and re-latches to the current heading rather than
# chasing it. The BNO055 yaw is magnetically referenced and has been measured jumping ~169 deg
# in a single 20 ms sample with roll/pitch untouched; chasing such a jump would turn it into a
# 180 deg turn command.
bool                     hold_yaw
