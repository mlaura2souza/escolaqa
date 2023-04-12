class LoginPage

    include Capybara::DSL

    def opcao_login(opcao)
        case opcao
        when "email e senha"
            find("span", text: "Entrar com email e senha").click
        end
    end

    def acessar_conta(email, senha)
        find("#email").set email
        find("#password").set senha
        btn = find_all("button", text: "Entrar")
        btn[0].click    
    end
end