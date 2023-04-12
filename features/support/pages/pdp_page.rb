class PdpPage

    include Capybara::DSL

    def adicionar_produto_carrinho
        find("button", text: "Adicionar ao carrinho").click
    end

    def clicar_ir_para_carrinho
        find("span", text: "Ir para o carrinho").click
    end
end