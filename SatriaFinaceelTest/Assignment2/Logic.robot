*** Settings ***
Library   AppiumLibrary

*** Keywords ***
Spawn Appium Server
  Run Process   kill $(lsof -t -i:${PORT})    shell=true
  Start Process   appium
  ...   -p    ${PORT}
  ...   -bp   ${BOOTSTRAP_PORT}
  ...   alias=appium
  Run Process    adb -s ${UDID} shell pm clear ${APP_PACKAGE}   shell=True
  Sleep     5
  Open Device Application

Open Device Application
  Open Application    ${APPIUM_SERVER}
  ...   platformName=${PLATFORM_NAME}
  ...   deviceName=${DEVICE_NAME}
  ...   appPackage=${APP_PACKAGE}
  ...   appActivity=${APP_ACTIVITY}
  ...   udid=${UDID}
  ...   newCommandTimeout=3000
  ...   fullReset=false
  ...   alias=appium
  ...   noReset=true
  ...   automationName=UiAutomator1

Open Google Maps Application
  Spawn Appium Server
  Open Device Application
  Click Accept & Continue on TnC Google Maps
  Tap Skip button on Login Google Maps Screen

Ensure On Google Maps Main Screen
  Verify Point To Your Location Button
  Verify Directions Button
  Verify Map Frame
  Verify Search Box Container

Search Location
  [Arguments]                       ${KEYWORD}
  Tap Search Box
  Input Keyword on Search Box       ${KEYWORD}
  Tap Search Button From Keyboard
