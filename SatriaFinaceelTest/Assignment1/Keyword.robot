*** Settings ***
Library   API_Helper.py

*** Keywords ***
Go to Github Login Page
    [Arguments]                                 ${URL}
    Open Browser                                ${URL}       Chrome

Input Username
    [Arguments]                                 ${USERNAME}
    Wait Until Element Is Visible               login_field              ${SHORT_TIMEOUT}
    Input Text                                  login_field              ${USERNAME}

Input Password
    [Arguments]                                 ${PASSWORD}
    Wait Until Element Is Visible               password              ${SHORT_TIMEOUT}
    Input Text                                  password              ${PASSWORD}

Click Sign In Button
    Click Element                               commit

Get List Repo From API
  ${list_repo}=                                 Get List User Repo
  [Return]                                      ${list_repo}

*** Logic ***
Login Github Using Registered Account
    Input Username                             ${USERNAME}
    Input Password                             ${PASSWORD}
    Click Sign In Button

Verify Created Repo Available in List
  [Arguments]                                   ${created_repo}
  ${list_repo}=                                 Get List Repo From API
  Should Contain Any                            ${list_repo}      ${created_repo}