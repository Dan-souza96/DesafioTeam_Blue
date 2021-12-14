
  
  Quando('preencho os campos corretamente com nome {string} cpf {string} sexo {string} data adimissao {string} cargo {string} por fim salario {string}') do |string, string2, string3, string4, string5, string6|
   @CadastrarFuncionario = CadastroFuncionarioPage.new
   @CadastrarFuncionario.load
   @CadastrarFuncionario.cadastrar_funcionario(string, string2, string3, string4, string5, string6)
  end
  
  Então('finalizo o cadastro.') do
    @CadastrarFuncionario.verificar_cadastro
  end

