* Settings *
Documentation       Arquivo de ações da funcionalidade adicionar produto ao carrinho

* Keywords *
Incluir produto ao carrinho
    Click   css=#add-to-cart-button
Acessar carrinho    
    Click   css=#nav-cart
    Get Text    xpath=//*[@id="sc-active-cart"]/div/div/div/h1      contains    Carrinho de compras
Fechar pedido 
    Click       css=#sc-buy-box-ptc-button
    Get Text    text=Fazer login