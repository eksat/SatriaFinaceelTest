*** Settings ***
Resource          Resource.robot

*** Test Case ***
Search and Zoom On Pinned Location
  Open Google Maps Application
  Ensure On Google Maps Main Screen
  Search Location                            Jakarta
  Handle Tutorial Layout Screen
  Zoom On Maps
