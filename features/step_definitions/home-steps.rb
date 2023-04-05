Dado('que eu clico em {string}') do |string|
    find("div[data-testid='wrapper-dropdown']").click
  end
  
  Dado('clico em {string}') do |string|
    find(:xpath, "//ul//li//a[text()='#{string}']").click
  end
  
  Então('sou redirecionado para a home de serviços') do
    elemento1 = find("div[class*='Welcome__Text']")
     elemento2 = find(:xpath, "//div[text()='Agende o serviço com os Anjos parceiros.']")

    expect(elemento1.visible?).to be true
    expect(elemento2.visible?).to be true
  end