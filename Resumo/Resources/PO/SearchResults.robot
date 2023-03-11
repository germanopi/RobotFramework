*** Settings ***
Library  SeleniumLibrary                                                               # Chama a biblioteca do SeleniumLibrary

*** Keywords ***
Verify Search Completed                                                                # Cria o keyword utilizado nessa página do browser
    Wait Until Page Contains            results for "${SEARCH_TERM}"                   # Espera que a página contenha o valor "results for "${SEARCH_TERM}" determinada pelo valor da variavel global "

Click Product Link                                                                     # Cria o keyword utilizado nessa página do browser
    [Documentation]  Clicks on the first product in the search results list            # Descreve informações básicas sobre o keyword
    Click Link                          partial link:Ferrari Bburago                   # Clica no link que contenha "Ferrari Bburago"