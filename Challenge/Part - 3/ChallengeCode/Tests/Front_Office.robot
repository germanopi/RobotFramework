*** Settings ***
Resource    ../Resources/Keywords.robot
Resource    ../Resources/Setup.robot
Test Setup    Setup.Begin Web Test
Test Teardown  Setup.End Web Test

*** Variables ***
${BROWSER} =    chrome
${URL} =   https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access Team page
    [Tags]    Homepage
    Keywords.Go to Home Page
    Keywords.Go to Team Page

Team page should match requiriments
    [Tags]    Services
    Keywords.Go to Home Page
    Keywords.Go to Team Page
    Keywords.Validate Team Page
