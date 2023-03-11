*** Settings ***
Library  SeleniumLibrary                                    # Chama a biblioteca do SeleniumLibrary

*** Keywords ***
Verify Page Loaded                                          # Cria o keyword utilizado nessa página do browser
    Wait Until Page Contains        Back to results         # Espera que a página contenha o valor "Back to results"

Add to Cart                                                 # Cria o keyword utilizado nessa página do browser
    Click Button                    id=add-to-cart-button   # Clica no botão com identificador "add-to-cart-button"
    Log                             Adicionado com sucesso  # Printa a informação que o produto foi adicionado