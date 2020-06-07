*** Settings ***
Library         AppiumLibrary    ${DEFAULT_TIMEOUT}    run_on_failure=Log Source
Library         Collections
Library         String
Library         Process
Library         DebugLibrary
Library         REST


*** Variable ***
${PLATFORM_NAME}          Android
${DEVICE_NAME}            Android
${APP_PACKAGE}            com.google.android.apps.maps
${APP_ACTIVITY}           com.google.android.maps.MapsActivity
${UDID}                   emulator-5554
${PORT}                   4729
${BOOTSTRAP_PORT}         50009
${APPIUM_SERVER}          http://localhost:${PORT}/wd/hub
${DEFAULT_TIMEOUT}        10