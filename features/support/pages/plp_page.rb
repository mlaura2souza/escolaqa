class PlpPage

    include Capybara::DSL

    def selecionar_produto
        produtos = find_all("div[data-testid='product-item']")
        produtos[0].click
    end
end