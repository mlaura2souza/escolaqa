class CarrinhoPage

    include Capybara::DSL

    def clicar_finalizar_compra
        find("span", text: "Finalizar a compra").click
    end
end