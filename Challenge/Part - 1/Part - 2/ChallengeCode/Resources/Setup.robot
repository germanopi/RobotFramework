*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  ${HOMEPAGE}  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser