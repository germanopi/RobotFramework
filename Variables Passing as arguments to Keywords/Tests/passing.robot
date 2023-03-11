*** Settings ***
Library     SeleniumLibrary     # It is here because this is a simple code, but should be removed from here, and added to each page object
*** Variables ***

*** Test Cases ***
User can search for products
    Begin Web Test Scalar    http://www.amazon.com  chrome

    @{url_and_browser} =  Set Variable  http://www.amazon.com  chrome
    Begin Web Test List    @{url_and_browser}

*** Keywords ***
 Begin Web Test Scalar
    [Arguments]     ${url}      ${browser}    # The Keyworld will receive those 2 arguments
    Open browser    ${url}      ${browser}    # Those arguments will be used inside the keyword wherever it need
    Close browser

Begin Web Test List
    [Arguments]  @{url_and_browser}             # The Keyword will receive just one argument with two informations
    Open Browser  ${url_and_browser}[0]  ${url_and_browser}[1]
    Close Browser