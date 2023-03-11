*** Settings ***
Library  SeleniumLibrary                                    # Chama a biblioteca do SeleniumLibrary

*** Keywords ***
Verify Product Added                                        # Cria o keyword utilizado nessa página do browser
    Wait Until Page Contains        Cart subtotal           # Espera que a página contenha o valor "Cart subtotal"

Proceed to Checkout                                         # Cria o keyword utilizado nessa página do browser
    Click Link                      id=hlb-ptc-btn-native   # Clica no link com o identificador "hlb-ptc-btn-native"