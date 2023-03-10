# This File is used to Open and Close browser only
*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    https://google.com     chrome
End Web Test
    Close Browser
Insert Testing Data
    Log         Inserting test data...
    Custom Keyword 1    # It is possible to call keywords inside of keywords
    Custom Keyword 2
Cleanup Testing Data
    Log         Cleaning test data...
Custom Keyword 1
    Log         Doing keyword 1
Custom Keyword 2
    Log         Doing keyword 2