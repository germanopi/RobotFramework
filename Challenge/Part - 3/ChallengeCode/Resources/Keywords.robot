*** Settings ***
Resource     PageObjects/AboutPage.robot
Resource     PageObjects/ContactPage.robot
Resource     PageObjects/HeaderPage.robot
Resource     PageObjects/HomePage.robot
Resource     PageObjects/PortifolioPage.robot
Resource     PageObjects/ServicesPage.robot
Resource     PageObjects/TeamPage.robot

*** Variables ***


*** Keywords ***
Go to Home Page
    HomePage.Navigate To
    HomePage.Verify Page Loaded
Go to Team Page
    HeaderPage.Select Team Page
    TeamPage.Verify Page Loaded

Validate Team Page
    TeamPage.Validate Page Contents