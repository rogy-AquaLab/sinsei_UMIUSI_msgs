# Attitude target for the attitude controller.
# Roll/pitch are commanded as an absolute attitude; yaw is commanded as a rate.

std_msgs/Header header              # frame_id: reference frame the attitude is expressed in (gravity-aligned, not body-fixed)

geometry_msgs/Quaternion attitude   # Target roll/pitch attitude; yaw component should be 0
float64                  yaw_rate   # [rad/s]

# Heading hold. false (default): plain rate control above, no state.
#   false -> true  latch the heading measured at that instant
#   true           hold the latched heading; yaw_rate slews it (lead over the measured heading
#                  is limited by the controller)
#   true -> false  drop the latch
# A heading error beyond the controller's threshold is treated as an IMU heading jump: the
# controller re-latches to the current heading instead of turning toward the old one.
bool                     hold_yaw
