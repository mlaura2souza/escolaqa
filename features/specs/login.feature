# language: pt
Funcionalidade: Login

@login
  Cenário: Realizar login com sucesso
    Dado que eu acesse a tela de login
    E seleciono a opção email e senha
    E realize login com "gabriel.lopes@cobasi.com.br" e "Cobasi@123"
    Então devo estar logado com sucesso

  @login_compra_programada
  Cenário: Login pelo menu de compra programada
    Dado que eu acesse a tela de compra programada
    Quando clique no botão entrar
    E seleciono a opção email e senha
    E realize login com "gabriel.lopes@cobasi.com.br" e "Cobasi@123"
    Então devo ser redirecionado para a tela de compra programada

  @login_com_falha
  Esquema do Cenario: Realizar login com falha
    Dado que eu acesse a tela de login
    E acesse a opção email e senha
    E realize login com "<email>" e "<senha>"
    Então devo ver a "<mensagem>" com sucesso

    Exemplos: 
      | email                       | senha       | mensagem                   |
      | gabriel.lopes@cobasi.com.br |             | E-mail ou senha inválidos. |
      | gabriel.lope@cobasi.com.br  | Cobasi@123  | E-mail ou senha inválidos. |
      |                             | Cobasi@123  | E-mail ou senha inválidos. |
      |                             |             | E-mail ou senha inválidos. |
      | gabriel.lopes@cobasi.com.br | Cobasi@1234 | E-mail ou senha inválidos. |
