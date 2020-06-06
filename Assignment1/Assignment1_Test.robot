*** Settings ***
Resource          Resource.robot
Resource          Keyword.robot
Resource          Logic.robot

*** Test Case ***
Login and Create Repo on Github
    Go to Github Login Page                   ${URL}
    Login Github Using Registered Account
    Created New Repository
    ${created_repo}=                          Get Created Repository Name
    Verify Created Repo Available in List     ${created_repo}
    Logout From Github Account
    Close Browser