Dado('que eu esteja na pagina de login') do
   @Login = LoginPage.new
   @Login.load
  end
  
  Quando('preencha os campos usuario {string} senha {string} corretamente') do |string, string2|
    @Login.logar(string,string2) 
     
  end
  
  Então('entro na pagina com sucesso.') do
    @Login.verificar_login
    
  end