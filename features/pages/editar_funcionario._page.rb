class EditarCadastroPage < SitePrism::Page
    # set_url 'empregados/'
    element :campo_nome, '#register_name'
    element :campo_email, '#register_email'
    element :campo_senha, '#register_password'
    element :botao_editar, :css, '.btn.btn-warning'
    element :botao_cadastrar, :css, '.cadastrar-form-btn'
    # element :mensagem_sucesso, :css, '.alert alert-success alert-dismissible fade show'
    element :mensagem_sucesso, :css, 'body > div > div.container-message > div > strong'




  def editar_funçao(nome,cargo)
        find('input[type=search]').send_keys(nome) 
        sleep(4)
        botao_editar.click 
        fill_in 'inputCargo', with:cargo 
        botao_cadastrar.click 
  end




  def verificar_cadastros
    expect(mensagem_sucesso.text).to eql 'SUCESSO!'


  end





end