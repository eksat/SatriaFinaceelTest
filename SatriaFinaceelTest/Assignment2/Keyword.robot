*** Keywords ***
Click Accept & Continue on TnC Google Maps
  Click Element                       xpath=//android.widget.FrameLayout[@resource-id='com.google.android.apps.gmm:id/accept_button']

Tap Skip button on Login Google Maps Screen
  Click Element                       xpath=//android.widget.Button[@text='Skip']

Verify Point To Your Location Button
  Wait Until Element Is Visible      xpath=//android.widget.FrameLayout[@resource-id='com.google.android.apps.gmm:id/mylocation_button']

Verify Directions Button
  Wait Until Element Is Visible      xpath=//android.widget.FrameLayout[@resource-id='com.google.android.apps.gmm:id/on_map_directions_button']

Verify Map Frame
  Wait Until Element Is Visible      xpath=//android.widget.FrameLayout[@resource-id='com.google.android.apps.gmm:id/map_frame']

Verify Search Box Container
  Wait Until Element Is Visible       xpath=//android.widget.EditText[@resource-id='com.google.android.apps.gmm:id/search_omnibox_text_box']

Tap Search Box
  Click Element                       xpath=//android.widget.EditText[@resource-id='com.google.android.apps.gmm:id/search_omnibox_text_box']

Input Keyword on Search Box
  [Arguments]                         ${KEYWORD}
  Input Text                          xpath=//android.widget.EditText[@resource-id='com.google.android.apps.gmm:id/search_omnibox_text_box']          ${KEYWORD}

Tap Search Button From Keyboard
  Sleep                               5
  Run Process                         adb -s ${UDID} shell input tap 1380 2248    shell=true

Verify Tutorial Layout
  Wait Until Element Is Visible      xpath=//android.widget.LinearLayout[@resource-id='com.google.android.apps.gmm:id/tutorial_pull_up_layout']

Click Got It Button on Tutorial Layout
  Click Element                      xpath=//android.widget.Button[@resource-id='com.google.android.apps.gmm:id/tutorial_pull_up_got_it']

Handle Tutorial Layout Screen
  ${is_layout_available}=             Run Keyword And Return Status                  Verify Tutorial Layout
  Run Keyword If                     '${is_layout_available}'=='True'                Click Got It Button on Tutorial Layout

Zoom On Maps
  ${first_x}                          Evaluate            805
  ${first_y}                          Evaluate            1074
  ${x_up}                             Evaluate            1151
  ${y_up}                             Evaluate            826
  ${second_x}                         Evaluate            609
  ${second_y}                         Evaluate            1254
  ${x_down}                           Evaluate            253
  ${y_down}                           Evaluate            1507
  zoom_out_by_coordinates             ${first_x}          ${first_y}    ${x_up}   ${y_up}  ${second_x}   ${second_y}  ${x_down}   ${y_down}