*** Settings ***
Library  SeleniumLibrary                                    # Chama a biblioteca do SeleniumLibrary

*** Variables ***


*** Keywords ***
Load                                                         # Cria o keyword utilizado nessa página do browser
    Go To                       ${START_URL}                 # Vai para a pagina definida da variavel Global

Verify Page Loaded                                           # Cria o keyword utilizado nessa página do browser
    Wait Until Page Contains    Hello                        # Confere que a página contem o valor esperado "Hello"