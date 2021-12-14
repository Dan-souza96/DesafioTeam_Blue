
#language: pt 
#encoding: utf-8


  Funcionalidade: Cadastrar funcionario

  @cadastrar_funcionario
   Cenário: cadastrando funcionario
       Dado que eu esteja logado com usuario "Daniel.Souza" senha "2311" corretamente 
       Quando preencho os campos corretamente com nome 'agora' cpf '818.296.170-01' sexo 'Masculino' data adimissao '15/07/2000' cargo 'motorista' por fim salario '2000.00'
       Então finalizo o cadastro.
