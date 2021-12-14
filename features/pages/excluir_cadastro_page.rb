class ExcluirPage < SitePrism::Page
    # set_url 'empregados/'
    element :campo_nome, '#register_name'
    element :campo_email, '#register_email'
    element :campo_senha, '#register_password'
    element :botao_excluir,:id,'delete-btn'
    element :mensagen, :id, 'tabela_previous'
    element :mensagem_sucesso, :css, 'body > div > div.container-message > div > strong'
    def excluir_cadastro(nome)
        find('input[type=search]').send_keys(nome)    
        botao_excluir.click
    end
   

    def sucesso 
        expect(mensagem_sucesso.text).to eql 'SUCESSO!'
    end
    
 end