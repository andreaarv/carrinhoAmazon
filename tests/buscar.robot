* Settings *
Resource    ${EXECDIR}/resources/base.robot

Test Setup      Abrir Navegador
Test Teardown   Take Screenshot

* Test Cases *
Buscar produto
    Realizar busca do produto  notebook
    Selecionar primeiro item da lista de resultados



