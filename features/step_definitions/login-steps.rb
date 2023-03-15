Dado('que eu acesse a tela de login') do
    find("div[class*='styles__Sign']").click
  end
  
  Dado('seleciono a opção email e senha') do
    find("span", text: "Entrar com email e senha").click
  end
  
  Dado('realize login com {string} e {string}') do |email, senha|
    find("#email").set email
    find("input[placeholder='Senha']").set senha
    find("button", text: "Entrar").click
  end
  
  Então('devo estar logado com sucesso') do
    expect(page).to have_content('Olá')
  end

  Então('devo ver a {string} com sucesso') do |mensagem|
    alerta = find("span", text: mensagem)
    expect(alerta.visible?).to be true
  end

  Dado('que eu acesse a tela de assinatura') do
    find(:xpath,'//li[contains(@class, "styles__ListLink")]//a[text()="Assinatura"]').click
  end
  
  Quando('clique no botão entrar') do
    find("a", text: "Entrar").click
    switch_to_window(windows.last)
  end
  
  Então('devo ser redirecionado para a tela de assinatura') do
    elemento = find("h2", text:"Sua conta")
    expect(elemento.visible?).to be true
  end