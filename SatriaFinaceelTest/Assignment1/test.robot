*** Settings ***
Resource          resource.robot
Resource          Keyword.robot

*** Test Case ***
Login and Create Repo on Github
    Go to Github Login Page                    ${URL}
    Login Github Using Registered Account
    Verify Created Repo Available in List      ${created_repo}
    Close Browser