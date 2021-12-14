Dado('que eu esteja logado com usuario {string} senha {string} corretamente') do |string, string2|
  @Login = LoginPage.new
  @Login.load
  @Login.logar(string,string2)
end
 
 Quando('encontro o funcionario {string} edito o cargo dele para {string}') do |string, string2|
  @Editando = EditarCadastroPage.new
  #  @Editando.load
   @Editando.editar_funçao(string,string2)
 end

 Então('salvo com sucesso.') do
   @Editando.verificar_cadastros
 end