*** Settings ***
Library   API_Helper.py

*** Keywords ***
Login Github Using Registered Account
    Input Username                             ${USERNAME}
    Input Password                             ${PASSWORD}
    Click Sign In Button

Created New Repository
    Click New Repository Button
    Input Repository Name
    Ensure Repository Name is Available
    Set Repository To Public
    Click Submit Button
    Ensure Repository Successfully Created

Verify Created Repo Available in List
    [Arguments]                               ${created_repo}
    ${list_repo}=                             Get List Repo From API
    Should Contain Any                        ${list_repo}      ${created_repo}