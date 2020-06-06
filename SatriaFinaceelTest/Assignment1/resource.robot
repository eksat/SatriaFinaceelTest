*** Settings ***

Library          SeleniumLibrary
Library          FakerLibrary
Library          DebugLibrary
Library          RequestsLibrary
Library          REST

*** Variable ***
${URL}                    https://github.com/login
${USERNAME}               "[Your Github Username]"
${PASSWORD}               "[Your Github Password]"
${REPO_NAME}              "[Repository Name]"
${SHORT_TIMEOUT}          3
${MEDIUM_TIMEOUT}         5
${LONG_TIMEOUT}           10