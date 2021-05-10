* Settings *
Resource    ${EXECDIR}/resources/base.robot

Test Setup      Abrir Navegador
Test Teardown   Take Screenshot

* Test Cases *
Adicionar produto selecionado ao carrinho
    Realizar busca do produto  bicicleta
    Selecionar primeiro item da lista de resultados
    Incluir produto ao carrinho
    Acessar carrinho
    Fechar pedido 

