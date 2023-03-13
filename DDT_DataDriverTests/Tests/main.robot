*** Settings ***
Resource    ../Data/Dictionary.robot

*** Variables ***
&{DICTIONARY} =     go = https://google.com     yt =  https://youtube.com      fb = https://facebook.com                # dictionary
&{CUSTOMER_USER}  FirstName=Bryan  LastName=Lamb  Dob=1/1/1900  Email=bryan@robotframework.com  Password=MyPassword!    # dictionary
${ENVIRONMENT} =    go                                                                                                  # variable


*** Test Cases ***
Navigate To
    Go to    ${DICTIONARY.${ENVIRONMENT}}

Should be able to register for new account
    [Tags]  register
    Navigate to Landing Page
    Sleep  5s
    Create New Account  ${CUSTOMER_USER}        # Create New Account receive as arguments Email and Password, Customer_USER will give all it asks

My Test
    [Template]    My Test Template             # Will run Two times, each time with a diferent row
    One     Two     Three   Four
    Five    Six     Seven   Eight

*** Keywords ***

My Test Template
    [Arguments]    ${Value1}    ${Value2}   ${Value3}   ${Value4}
     Log     ${Value1}    ${Value2}   ${Value3}   ${Value4}