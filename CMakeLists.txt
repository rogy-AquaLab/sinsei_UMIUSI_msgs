cmake_minimum_required(VERSION 3.8)
project(sinsei_umiusi_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

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
  "msg/RobotState.msg"
  "msg/Target.msg"
  "msg/ThrusterEnabled.msg"
  "msg/ThrusterEnabledAll.msg"
  "msg/ThrusterOutput.msg"
  "msg/ThrusterOutputAll.msg"
  "msg/ThrusterState.msg"
  "msg/ThrusterStateAll.msg"
)

ament_package()
