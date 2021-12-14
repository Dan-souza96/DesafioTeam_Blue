  Quando('encontro o funcionario {string}') do |string|
  @Deletar = ExcluirPage.new
  # @Deletar.load
  @Deletar.excluir_cadastro(string)     
  end
  
 Então('apago o cadastro com sucesso.') do
   @Deletar.sucesso
  end
  