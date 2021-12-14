class CadastroPage < SitePrism::Page
    set_url 'accounts/signup/'
    element :campo_nome, '#register_name'
    element :campo_email, '#register_email'
    element :campo_senha, '#register_password'
    element :botao_cadastrar, :css, '.login100-form-btn'

    def cadastrar(usuario,senha,senha2)
        find('input[name=username]').send_keys(usuario) 
        find('input[name=pass]').send_keys(senha)
        find('input[name=confirmpass]').send_keys(senha2)
        # find(".login100-form-btn").click
        botao_cadastrar.click
    end


    
 end