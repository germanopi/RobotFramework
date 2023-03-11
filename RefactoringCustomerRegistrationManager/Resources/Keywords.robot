*** Settings ***
Resource    ../Resources/PageObject/AddCustomerPage.robot
Resource    ../Resources/PageObject/CustomerPage.robot
Resource    ../Resources/PageObject/HeadOfPages.robot
Resource    ../Resources/PageObject/HomePage.robot
Resource    ../Resources/PageObject/LoggedOutPage.robot
Resource    ../Resources/PageObject/SignInPage.robot
*** Variables ***

*** Keywords ***
Go to "Home" Page
    HomePage.Navigate To

Login With Valid Credentials
    [Arguments]     ${Email}     ${Password}
    HeadOfPages.Click "Sign In" Link
    SignInPage.Verify Page Loaded
    SignInPage.Login With Valid Credentials  ${Email}     ${Password}
    CustomerPage.Verify Page Loaded

Add New Customer
    CustomerPage.Click Add Customer Link
    AddCustomerPage.Verify Page Loaded
    AddCustomerPage.Add New Customer
    CustomerPage.Verify Customer Added Successfully

Sign Out
    HeadOfPages.Click "Sign Out" Link
    LoggedOutPage.Verify Page Loaded