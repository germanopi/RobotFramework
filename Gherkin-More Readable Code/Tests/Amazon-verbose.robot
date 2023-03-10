*** Settings ***
Documentation  These test cases are comprised of 1st level keywords
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AmazonApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Gherkin is used to allow other people understand the colaborated to the code
# It uses the format:
#   Given A (Preconditions)
#   Amd B   (Preconditions)
#   When C  (The Test)
#   Then D  (Expect Result)
#
# Where Scripts are features, Test Cases are Scenarios, Test Setup is the background
# Gherkins is declarative, so do not be specific, say about what the user would do on the inteface like: the user search for products is valid, but not: user click on search box and fill the space with desired product name
# Every expression agter Given/And/When/Then will be a keyword

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Given user is not logged in
    When user searches for products
    Then search results contains relevant products

Logged out user can view a product
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    Then correct product page loads

Logged out user can add product to cart
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    When user adds that product to their cart
    Then the product is present in cart

Logged out user must sign in to check out
    [Documentation]  This approach uses first level keywords, and it's clear what's happening under the covers
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    And user adds that product to their cart
    And the product is present in cart
    When user attempts to checkout
    Then the user is required to sign in








