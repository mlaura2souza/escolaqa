# language: pt
Funcionalidade: Busca de produto

  @busca
  Cenario: Realizar busca de produto com sucesso
    Dado que eu realizo uma busca de produto "ração cachorro"
    E seleciono um produto
    Então sou redirecionado para a PDP com sucesso
