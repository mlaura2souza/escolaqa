  Dado('clique em Adicionar ao Carrinho') do
    find("button", text: "Adicionar ao carrinho").click
  end
  
  Dado('clique em Ir para o carrinho') do
    find("span", text: "Ir para o carrinho").click
    
  end
  
  Dado('finalizar a compra') do
    find("span", text: "Finalizar a compra").click
  end

  Dado('clico em Continuar para pagamento') do
    find("span", text: "Continuar para pagamento").click
  end
  
  Dado('selecione o {string} como metódo de pagamento') do |forma_pagamento|
    case forma_pagamento
    when "PIX"
        find("h2", text: "Pix").click
        find("strong", text: "O código Pix expira em 10 minutos.")
    end
    
  end
  
  Dado('clique em ir para revisão') do
    find("span", text: "Continuar para revisão").click
  end
  
  Dado('clique em Finalizar a compra') do
    find("span", text: "Finalizar a compra").click
  end
  
  Então('eu visualizo o código do pix') do
    elemento1 = find("span", text: "Pagar com Pix")
    elemento2 = find("span", text: "Copiar código Pix")

    expect(elemento1.visible?).to be true
    expect(elemento2.visible?).to be true
  end