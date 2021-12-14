 Dado('que eu esteja na pagina de login para criar um novo usuario') do
    @Cadastro = CadastroPage.new
    @Cadastro.load
    
   end
  
   Quando('preencho os campos corretamente com nome {string}, senha {string} por fim confirmo a senha {string}') do |string, string2, string3|
    @Cadastro.cadastrar(string,string2,string3)
  
   end
  
   Então('salvo o novo registro criado.') do
    @Login = LoginPage.new
    @Login.load
    @Login.logar('daniely1','123')
    @Login.verificar_login 
   end

