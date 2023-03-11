*** Settings ***
Library  SeleniumLibrary                                                                          # Chama a biblioteca do SeleniumLibrary

*** Keywords ***
Verify Page Loaded                                                                               # Cria o keyword utilizado nessa página do browser
    Page Should Contain Element         createAccountSubmit                                      # Espera que a página contenha o valor "createAccountSubmit"
    Element Text Should Be              createAccountSubmit     Create your Amazon account       # Confere que o texto do elemento "createAccountSubmit" é "Create your Amazon account"
