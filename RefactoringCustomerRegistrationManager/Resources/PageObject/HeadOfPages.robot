*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${HEAD_SIGNIN_LINK} =   id=SignIn
${HEAD_SIGONUT_LINK} =  Sign Out
*** Keywords ***
Click "Sign In" Link
    click link          ${HEAD_SIGNIN_LINK}

Click "Sign Out" Link
    click link          ${HEAD_SIGONUT_LINK}