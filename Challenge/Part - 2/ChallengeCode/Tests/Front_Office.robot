*** Settings ***
Resource    ../Resources/Keywords.robot
Resource    ../Resources/Setup.robot
Test Setup    Setup.Begin Web Test
Test Teardown  Setup.End Web Test

*** Variables ***
${BROWSER} =    chrome
${HOMEPAGE} =   https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access HomePage
    [Tags]    Homepage
    Log     I can see HomePage
    sleep   3s

Should be able to access ServicesPage
    [Tags]    Services
    Log     I can see ServicesPage
    sleep   3s

