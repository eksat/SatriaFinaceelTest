*** Settings ***

Library          SeleniumLibrary
Library          FakerLibrary
Library          DebugLibrary
Library          RequestsLibrary
Library          REST

*** Variable ***
${URL}                    https://github.com/login
${USERNAME}               satriaeksat@gmail.com
${PASSWORD}               Satexsat1993
${SHORT_TIMEOUT}          3
${MEDIUM_TIMEOUT}         5
${LONG_TIMEOUT}           10