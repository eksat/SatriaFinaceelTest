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

Click New Repository Button
    Click Element                              xpath=//div[@class='js-repos-container']//a[@href='/new']

Input Repository Name
    Wait Until Element Is Visible              xpath=//input[@id='repository_name']       ${SHORT_TIMEOUT}
    Input Text                                 xpath=//input[@id='repository_name']       ${REPO_NAME}

Ensure Repository Name is Available
    Wait Until Element Is Visible              xpath=//dd[@class='success'][contains(text(),'${REPO_NAME} is available.')]    ${SHORT_TIMEOUT}

Set Repository To Public
    Click Element                              xpath=//label[@class='js-privacy-toggle-label-public']//input[@value='public']

Click Submit Button
    Click Element                              xpath=//button[@type='submit'][contains(text(),'Create repository')]

Ensure Repository Successfully Created
    Wait Until Element Is Visible              xpath=//a[@data-pjax='#js-repo-pjax-container'][@href='/${USERNAME}/${REPO_NAME}']    ${MEDIUM_TIMEOUT}

Get Created Repository Name
    ${created_repo}    Get Element Attribute   xpath=//a[@data-pjax='#js-repo-pjax-container']   text
    [Return]                                   ${created_repo}

Logout From Github Account
    Click Element                              xpath=//summary[@class='Header-link'][@aria-label='View profile and more']
    Click Element                              xpath=//form[@class='logout-form'][@action='/logout']
