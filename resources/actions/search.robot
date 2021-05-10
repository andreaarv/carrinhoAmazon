* Settings *
Documentation       Funcionalidades referentes a busca de produto

* Variables * 
${produtoSelecionado}
${produtoExibido}   

* Keywords *
Captar produto selecionado
    ${produtoSelecionado}=      Get Text    xpath=//*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[7]/div/span/div/div/div[2]/h2/a

Captar produto exibido
    Wait For Elements State     css=#productTitle   visible     10
    ${produtoExibido}=        Get Text    css=#productTitle

Realizar busca do produto
    [Arguments]      ${produto}
    Wait For Elements State     css=#twotabsearchtextbox    visible     10
    Fill Text       css=#twotabsearchtextbox        ${produto}
    Click           css=#nav-search-submit-button
    Get Text        css=.a-color-state    contains    ${produto}
    

Selecionar primeiro item da lista de resultados
    Captar produto selecionado
    Click           xpath=//*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[7]/div/span/div/div/div[2]/h2/a
    Captar produto exibido
    Should Be Equal    ${produtoSelecionado}   ${produtoExibido}

 
