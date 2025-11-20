cmake_minimum_required(VERSION 3.8)
project(sinsei_umiusi_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/EscState.msg"
  "msg/HeadlightsOutput.msg"
  "msg/HealthCheckResult.msg"
  "msg/HighPowerCircuitHealth.msg"
  "msg/HighPowerCircuitInfo.msg"
  "msg/ImuState.msg"
  "msg/IndicatorLedOutput.msg"
  "msg/LedTapeOutput.msg"
  "msg/LowPowerCircuitInfo.msg"
  "msg/MainPowerEnabled.msg"
  "msg/MainPowerOutput.msg"
  "msg/RobotState.msg"
  "msg/Target.msg"
  "msg/ThrusterEnabled.msg"
  "msg/ThrusterEnabledAll.msg"
  "msg/ThrusterOutput.msg"
  "msg/ThrusterOutputAll.msg"
  "msg/ThrusterState.msg"
  "msg/ThrusterStateAll.msg"

  "srv/PowerOff.srv"
  "srv/PowerOn.srv"
  "srv/SetState.srv"

  DEPENDENCIES
    std_msgs # used in LedTapeOutput.msg
    geometry_msgs
)

ament_package()
