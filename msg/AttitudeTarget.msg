# Attitude target for the attitude controller.
# Roll/pitch are commanded as an absolute attitude; yaw is commanded as a rate.

std_msgs/Header header              # frame_id: reference frame the attitude is expressed in (gravity-aligned, not body-fixed)

geometry_msgs/Quaternion attitude   # Target roll/pitch attitude; yaw component should be 0
float64                  yaw_rate   # [rad/s]
