# This is the main File
*** Settings ***
Documentation    This is some basic info about the whole suite
Resource         ../Settings&Keywords.robot  # reference where there is important and necessary info to run the program
Resource         ../Resources/Common.robot      # you can use .. to the directory, you dont need all the path 
Suite Setup      Common.Insert Testing Data     # Will execute before any test case
Test Setup       Common.Begin Web Test          # Will open the browser at the start of any test cases
Test Teardown    Common.End Web Test            # Will close the browser after any  the test cases
Suite Teardown   Common.Cleanup Testing Data    # Will execute after all test cases
*** Test Cases ***
Test case 1
    Settings&Keywords.Do Something          # At the start of keyword trigger, You'll reference the file where the Keyword is defined
    Settings&Keywords.Do Something Else     # You should always clean the code converting most used lines into keywords

Test case 2
    Settings&Keywords.Do Another Thing
    Settings&Keywords.Do Something Else
