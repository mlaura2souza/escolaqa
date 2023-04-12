class CompraProgramadaPage

    include Capybara::DSL

    def clique_entrar
        find("a", text: "Entrar").click
        switch_to_window(windows.last)
    end
end