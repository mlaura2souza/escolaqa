class HomePage

    include Capybara::DSL

    def clique_login
        find("div[class*='styles__Sign']").click
    end

    def menu_cabecalho(opcao)
        case opcao
        when "Compra Programada"
            find(:xpath,'//li[contains(@class, "styles__ListLink")]//a[text()="Compra Programada"]').click
        end
    end

    def realizar_busca(produto)
        find("input[placeholder='Para seu pet ou sua casa, procure aqui']").set produto
        click_link(produto)
end
end