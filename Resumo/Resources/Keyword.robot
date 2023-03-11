*** Settings ***
Resource  ../Resources/PO/LandingPage.robot                        # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos
Resource  ../Resources/PO/TopNav.robot                             # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos
Resource  ../Resources/PO/SearchResults.robot                      # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos
Resource  ../Resources/PO/Product.robot                            # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos
Resource  ../Resources/PO/Cart.robot                               # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos
Resource  ../Resources/PO/SignIn.robot                             # Chama o arquivo do page object de cada página do navegador, para utilizar dos seus keywords para criar outros mais complexos

*** Keywords ***
Search for Products                                                # Cria o keyword mais complexo
    LandingPage.Load                                               # O Keyword referencia o keyword interno e o page object que o construiu
    LandingPage.Verify Page Loaded                                 # O Keyword referencia o keyword interno e o page object que o construiu
    TopNav.Search for Products                                     # O Keyword referencia o keyword interno e o page object que o construiu
    SearchResults.Verify Search Completed                          # O Keyword referencia o keyword interno e o page object que o construiu


Select Product from Search Results                                 # Cria o keyword mais complexo
    SearchResults.Click Product link                               # O Keyword referencia o keyword interno e o page object que o construiu
    Product.Verify Page Loaded                                     # O Keyword referencia o keyword interno e o page object que o construiu

Add Product to Cart                                                # Cria o keyword mais complexo
    Product.Add to Cart                                            # O Keyword referencia o keyword interno e o page object que o construiu
    Cart.Verify Product Added                                      # O Keyword referencia o keyword interno e o page object que o construiu

Begin Checkout                                                     # Cria o keyword mais complexo
    Cart.Proceed to Checkout                                       # O Keyword referencia o keyword interno e o page object que o construiu
    SignIn.Verify Page Loaded                                      # O Keyword referencia o keyword interno e o page object que o construiu