*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =     css=#team > div > div:nth-child(1) > div > h2
${TEAM_ELEMENT_VALIDATION} =   Our Amazing Team

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${TEAM_HEADER_LABEL}
    should be equal as strings  ${ElementText}  ${TEAM_ELEMENT_VALIDATION}   ignore_case=true
