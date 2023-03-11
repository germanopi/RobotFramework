*** Settings ***
Documentation   Esses teste cases compoem o segundo nível de keyword, para facilitar os de primero level
Resource            ../Resources/Setup.robot                                      # Chama o arquivo que inicializa e encerra o browser
Resource            ../Resources/Keyword.robot                                    # Chama o arquivo que recebe as informações dos page objects de cada página do browser e constroi os keywords
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Gherkin é usado para permitir mais pessoas entender a lógica do código, usando o padrão:
#   Given A (Preconditions)
#   Amd B   (Preconditions)
#   When C  (The Test)
#   Then D  (Expect Result)
#
# Onde Scripts are features, Test Cases são Scenarios, Test Setup é o background
# Gherkins é declarativo, então não se deve especificar o modo como o usuario vai fazer a ação na interface, apenas dizer o que ele vai fazer
# Toda expressão após Given/And/Wheb/Theb vau ser um keyword

*** Test Cases ***
# Control B no keyword permite ver os keyword de baixo nível
Logged out user can search for products
    [Tags]  Smoke
    Given user is not logged in
    When user searches for products
    Then search results contains relevant products

Logged out user can view a product
    [Tags]  Smoke
    Given user is not logged in
    When user selects a searched product
    Then correct product page loads

Logged out user can add product to cart
    [Tags]  Smoke
    Given user is not logged in
    And user selects a searched product
    When user adds that product to their cart
    Then the product is present in cart

Logged out user must sign in to check out
    [Tags]  Smoke
    Given user is not logged in
    And user adds a product to their cart
    When user attempts to checkout
    Then the user is required to sign in








