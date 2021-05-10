* Settings * 
Documentation       Arquivo base do projeto 

Library     Browser
Library     OperatingSystem

Resource    actions/search.robot
Resource    actions/cart.robot

* Keywords * 
Abrir Navegador
    New Browser     chromium    false
    New Page        https://www.amazon.com.br/
    Wait For Elements State     css=#nav-link-accountList-nav-line-1     visible     10
    Get Text        text=Olá, Faça seu login
Get JSON
   [Arguments]    ${file_name}
   ${file}     Get File       ${EXECDIR}/resources/fixtures/${file_name}
   ${super_var}   Evaluate    json.loads($file)    json

   [return]    ${super_var}

