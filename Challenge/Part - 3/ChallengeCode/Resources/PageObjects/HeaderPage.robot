*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HEADER_TEAM_LINK} =   Team

*** Keywords ***
Select Team Page
    click link  ${HEADER_TEAM_LINK}