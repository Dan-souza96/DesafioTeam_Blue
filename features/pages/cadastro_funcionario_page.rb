class CadastroFuncionarioPage < SitePrism::Page
    set_url 'empregados/new_empregado'
    element :campo_nome, '#register_name'
    element :campo_email, '#register_email'
    element :campo_senha, '#register_password'
    element :botao_cadastrar, :css, '.cadastrar-form-btn'
    element :mensagem_sucesso, :css, 'body > div > div.container-message > div > strong'



    def cadastrar_funcionario (nome, cpf, sexo, data_adimissao, cargo, salario)
    find('#inputNome').send_keys(nome) 
    find('#cpf').send_keys(cpf) 
  
    
    #option[2] = Indiferente
    #option[3] = Feminino
    #option[4] = Masculino
    select sexo, :from => "slctSexo"
    # find(:id, 'slctSexo').find(:xpath, 'option[4]').select_option



    find('#inputAdmissao').send_keys(data_adimissao)
    find('#inputCargo').send_keys(cargo) 
    find('#dinheiro').send_keys(salario) 
    find('#clt').click


    botao_cadastrar.click 
    end


    def verificar_cadastro
        expect(mensagem_sucesso.text).to eql 'SUCESSO!'


    end
end




    