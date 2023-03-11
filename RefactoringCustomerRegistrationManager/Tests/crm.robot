# Run with  robot -d PathToResults PathToScript/ScriptName.robot
# Go to crm.robot not Refactored to comments about functionalities
*** Settings ***
Documentation       This is some basic information about the whole suite, system and the reason of testing
Resource            ../Resources/Setup.robot
Resource            ../Resources/Keywords.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test
*** Variables ***
${BROWSER} =    chrome
${URL} =        https:/automationplayground.com/crm
${VALID_LOGIN_EMAIL} =      admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =   123

*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1000    SmokeTest   Contacts
    # Login
    Keywords.Go to "Home" Page
    Keywords.Login With Valid Credentials       ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    # Add a new customer
    Keywords.Add New Customer
    # Log Out
    Keywords.Sign Out


*** Keywords ***
