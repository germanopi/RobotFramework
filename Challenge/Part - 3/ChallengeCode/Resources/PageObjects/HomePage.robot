*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HOMEPAGE_NAVIGATION_ELEMENT} =     id=mainNav

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element    ${HOMEPAGE_NAVIGATION_ELEMENT}