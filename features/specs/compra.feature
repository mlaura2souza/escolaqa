# language: pt
Funcionalidade: Compra de produto

  @compra
  Cenario: Realizar compra de um produto via pix
    Dado que eu realizo uma busca de produto "ração cachorro"
    E seleciono um produto
    E clique em Adicionar ao Carrinho
    E clique em Ir para o carrinho
    E finalizar a compra
    E realize login com "gabriel.lopes@cobasi.com.br" e "Cobasi@123"
    E clico em Continuar para pagamento
    E selecione o 'PIX' como metódo de pagamento
    E clique em ir para revisão
    E clique em Finalizar a compra
    Então eu visualizo o código do pix
