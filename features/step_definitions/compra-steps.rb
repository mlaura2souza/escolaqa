  Dado('clique em Adicionar ao Carrinho') do
    @pdpPage.adicionar_produto_carrinho()
  end
  
  Dado('clique em Ir para o carrinho') do
    @pdpPage.clicar_ir_para_carrinho()
  end
  
  Dado('finalizar a compra') do
    @carrinhoPage.clicar_finalizar_compra()
  end

  Dado('clico em Continuar para pagamento') do
    @checkoutPage.continuar_para_pagamento()
  end
  
  Dado('selecione o {string} como metódo de pagamento') do |pagamento|
    @checkoutPage.seleciona_forma_pagamento(pagamento)
  end
  
  Dado('clique em ir para revisão') do
    @checkoutPage.continuar_para_revisao()
  end
  
  Dado('clique em Finalizar a compra') do
    @carrinhoPage.clicar_finalizar_compra()
  end
  
  Então('eu visualizo o código do pix') do
    elemento1 = find("span", text: "Pagar com Pix")
    elemento2 = find("span", text: "Copiar código Pix")

    expect(elemento1.visible?).to be true
    expect(elemento2.visible?).to be true
  end

  Então('visualizo um botão para copiar o código do boleto') do
    elemento = find("span", text: "Copiar código do boleto")

    expect(elemento.visible?).to be true
  end