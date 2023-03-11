*** Settings ***
Documentation  This is some basic info about the whole suite                      # Descreve informações básicas do suite, sistema e razão do teste
Resource            ../Resources/Setup.robot                                      # Chama o arquivo que inicializa e encerra o browser
Resource            ../Resources/Keyword.robot                                    # Chama o arquivo que recebe as informações dos page objects de cada página do browser e constroi os keywords
Suite Setup         Setup.Hello World                                             # Chama o keyword do Setup que será executado antes de todos os test cases
Test Setup          Setup.Begin Web Test                                          # Chama o Keyword do Setup para inicializar o Chrome no inicio do primeiro test case
Test Teardown       Setup.End Web Test                                            # Chama o Keyword do Setup para finalizar o Chrome no final do ultimo test case
Suite Teardown      Setup.Bye World                                               # Chama o keyword do Setup que será executado depois de todos os test cases

*** Variables ***
# São categorizadas em:
# Global (Como acesso para o arquivo e aqueles que o referenciarem com Resource, é escrito no formato ${UPPER_CASE}
# Test Case/Keyword com acesso apenas para o test case/keyword onde ele foi definido ${lower-case}
# Scalar, com apenas um elemento, criado no formato ${varial}, mas chamado com ${}
# List, com varios elementos, criado no formato @{variavel}, mas chamado com ${}[] ou ${} para vir completo
${BROWSER} =        chrome                                                        # Cria uma váriavel Global do tipo Scalar, com um elemento
${START_URL} =      https://www.amazon.com                                        # Cria uma váriavel Global do tipo Scalar, com um elemento
${SEARCH_TERM} =    Ferrari 458                                                   # Cria uma váriavel Global do tipo Scalar, com um elemento
@{LIST_OF_ELEMENTS} =       Car      Bycycle     Airplane                         # Cria uma váriavel global do tipo lista, com varios elementos

*** Test Cases ***
Logged out user can search for products                                           # Cria um test Case
    [Documentation]         This is some basic info about the test                # Descreve informações sobre o test case
    [Tags]  Current                                                               # Categoriza esse test case com a Tag "Current"
    Keyword.Search for Products                                                   # O test case referencia o keyword e o arquivo que o construiu

Logged out user can view a product                                                # Cria um test Case
    Keyword.Search for Products                                                   # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Select Product from Search Results                                    # O test case referencia o keyword e o arquivo que o construiu

Logged out user can add product to cart                                           # Cria um test Case
    Keyword.Search for Products                                                   # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Select Product from Search Results                                    # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Add Product to Cart                                                   # O test case referencia o keyword e o arquivo que o construiu

Logged out user must sign in to check out                                         # Cria um test Case
    Keyword.Search for Products                                                   # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Select Product from Search Results                                    # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Add Product to Cart                                                   # O test case referencia o keyword e o arquivo que o construiu
    Keyword.Begin Checkout                                                        # O test case referencia o keyword e o arquivo que o construiu

Variable Demonstrations                                                           # Cria um test Case
    Log     ${BROWSER}                                                            # Imprime o valor da variavel global do tipo Scalar
    ${elemento} =  Set Variable  elemento unico                                   # Atribui um valor para a variavel do test case do tipo Scalar
    Log     ${elemento}                                                           # Imprime o valor da variavel do test case
    Log     ${LIST_OF_ELEMENTS}[0]                                                # Imprime o primeiro valor da variavel global do tipo lista
    Log     ${LIST_OF_ELEMENTS}[1]                                                # Imprime o segundo valor da variavel global do tipo lista
    ${lista_de_elementos} =   Create List      Item 1      Item 2      Item 3     # Atribui valores para a variavel do test case do tipo lista
    Log     ${lista_de_elementos}[0]                                              # Imprime o primeiro valor da variavel do test case do tipo lista
    Log     ${lista_de_elementos}[1]                                              # Imprime o segundo valor da variavel do test case do tipo lista

Variaveis como Argumentos
    Passando Variaveis Scalar como argumentos   https://google.com      chrome

    @{url_and_browser} =  Create List  http://www.amazon.com     chrome
    Passando Variavel Lista como argumento    @{url_and_browser}

*** Keywords ***
Passando Variaveis Scalar como argumentos
    [Arguments]     ${url}      ${browser}                                        # O Keyword recebe dois argumentos no formato de variaveis do tipo scalar com um elemento
    Log    ${url}      ${browser}
Passando Variavel Lista como argumento
    [Arguments]  @{url_and_browser}                                              # O Keyword recebe um argumento no formato de variavel do tipo lista com varios valores
    Log  ${url_and_browser}[0]  ${url_and_browser}[1]
