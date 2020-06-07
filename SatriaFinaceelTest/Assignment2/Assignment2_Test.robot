*** Settings ***
Library           Zoom.py
Resource          Resource.robot
Resource          Keyword.robot
Resource          Logic.robot

*** Test Case ***

Ensure on Google Maps Welcome Page
  Open Google Maps Application
  Ensure On Google Maps Main Screen
  Search Location                            Jakarta
  Handle Tutorial Layout Screen
