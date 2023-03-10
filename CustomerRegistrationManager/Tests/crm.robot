# Run with  robot -d PathToResults PathToScript/ScriptName.robot
*** Settings ***
Documentation       This is some basic information about the whole suite, system and the reason of testing
Library             SeleniumLibrary  # Import selenium library, it's possible to add some rules here

*** Variables ***

*** Test Cases ***
Should be able to add new customer    # Test Case name
    [Documentation]         This is some basic info about the test
    [Tags]                  1000    SmokeTest   Contacts    #Id, Type and feature being tested

    # Initalize Selenium
    set selenium speed      .2s
    set selenium timeout    10s

    # Open The Browser
    log                     Starting the Test Case!      # Print this line at log.html execution
    open browser            https://automationplayground.com/crm/   chrome
    # You can see informations about elements on the page with developer options allowing you to target what you desire

    # Resize browser window
    set window position         x=341   y=169
    set window size             width=1935  height=1090

    page should contain         Customers Are Priority One    # Verify you are in the home page
    click Link                  Sign In     # or name=sign-in-link or id=SignIn or login.html or xpath=//*[@id="SignIn"] or css=#SignIn
    wait until page contains    Login    # A safe method to make sure you are where you are /// You could use "page should contain" that verifty you are in the Login page

    # Write username, password and login
    input text              id=email-id     admin@robotframeworktutorial.com
    input text              id=password     123
    click button            id=submit-id
    page should contain     Our Happy Customers     # Verify you logged successfully

    # Add a new customer
    click link              id=new-customer
    page should contain     Add Customer    # Verify you are at add customer page

    # Fill new customer informations
    input text              id=EmailAddress     nobody@gmail.com
    input text              id=FirstName     Noel
    input text              id=LastName    Bodies
    input text              id=City     Hellcife
    select from list by value   id=StateOrRegion        TX
    select radio button     gender      female
    select checkbox         name=promos-name
    click button            Submit

    wait until page contains    Success! New customer added.    # Verify you added a new customer successfully

    sleep                   3s
    close browser


*** Keywords ***
