*** Settings ***
Library  SeleniumLibrary                                    # Chama a biblioteca do SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test                                             # Cria o keyword que inicializa o browser
    Open Browser  https://google.com  ${BROWSER}           # Abre o browser na página do google, e recebe o valor da variavel global para determinar qual browser abrir
    set window position         x=341   y=169              # Escolhe o local da tela que o navegador vai ficar
    set window size             width=1935  height=1090    # Escolhe o tamanho da tela do navegador
End Web Test                                               # Cria o keyword que encerra o browser
    sleep                   3s                             # Espera 3 segundos antes de fechar o browser
    Close Browser                                          # Fecha o browser
Hello World                                                # Cria o keyword que é executado antes de todos os test cases
    Log         Inicializando antes de tudo
Bye World                                                  # Cria o keyword que é executado depois de todos os test cases
    Log         Encerrando depois de tudo