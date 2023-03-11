*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGGEDOUT_HEADER_LABER} =  Signed Out

*** Keywords ***
Verify Page Loaded
    wait until page contains           ${LOGGEDOUT_HEADER_LABER}