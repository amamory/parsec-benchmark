MESSAGE("This is install script 3.")
SET(INSTALL_SCRIPT_3_DID_RUN 1)
IF(INSTALL_CODE_WITH_COMPONENT_DID_RUN)
  MESSAGE(FATAL_ERROR "Install script 3 did not run before install code with component.")
ENDIF(INSTALL_CODE_WITH_COMPONENT_DID_RUN)

IF(CMAKE_INSTALL_COMPONENT)
IF(NOT "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  MESSAGE("CMAKE_INSTALL_COMPONENT=\"${CMAKE_INSTALL_COMPONENT}\"")
  MESSAGE(FATAL_ERROR "Install script 3 should only run for \"Development\" INSTALL COMPONENT.")
ENDIF(NOT "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
ENDIF(CMAKE_INSTALL_COMPONENT)
