Dado('que eu realizo uma busca de produto {string}') do |busca|                
  @homePage.realizar_busca(busca)
  end                                                                             
                                                                                  
  Dado('seleciono um produto') do                                                 
    # produtos = find_all("div[data-testid='product-item']").sample //escolha aleatória
    # produtos.click
  @plpPage.selecionar_produto()
  end                                                                             
                                                                                  
  Então('sou redirecionado para a PDP com sucesso') do                            
    elemento = find("button", text: "Adicionar ao carrinho").click  
    expect(elemento.visible?).to be true 
    sleep 3
  end                                                                             