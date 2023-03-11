*** Settings ***
Documentation  Amazon top navigation                                              # Descreve informações básicas do page object
Library  SeleniumLibrary                                                          # Chama a biblioteca do SeleniumLibrary

*** Keywords ***
Search for Products                                                               # Cria o keyword utilizado nessa página do browser
    Enter Search Term                                                             # Chama o keyword que está no mesmo arquivo, logo não precisando endereçar outro arquivo
    Submit Search                                                                 # Chama o keyword que está no mesmo arquivo, logo não precisando endereçar outro arquivo

Enter Search Term                                                                 # Cria o keyword utilizado nessa página do browser
    Input Text          id=twotabsearchtextbox      ${SEARCH_TERM}                # Procura o elemento com indentificador "twotabsearchtextbox" e adiciona o valor da variavel global alocada

Submit Search                                                                     # Cria o keyword utilizado nessa página do browser
    Click Button        xpath=//*[@id="nav-search"]/form/div[2]/div/input         # Clica no botão com xpath "//*[@id="nav-search"]/form/div[2]/div/input"