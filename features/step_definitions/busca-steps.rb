Dado('que eu realizo uma busca de produto {string}') do |busca|                
    find("input[placeholder='Para seu pet ou sua casa, procure aqui']").set busca
    click_link(busca)
    sleep 5
  end                                                                             
                                                                                  
  Dado('seleciono um produto') do                                                 
    # produtos = find_all("div[data-testid='product-item']").sample //escolha aleatória
    # produtos.click
    produtos = find_all("div[data-testid='product-item']")
    produtos[0].click
  end                                                                             
                                                                                  
  Então('sou redirecionado para a PDP com sucesso') do                            
    elemento = find("button", text: "Adicionar ao carrinho").click  
    expect(elemento.visible?).to be true 
    sleep 3
  end                                                                             