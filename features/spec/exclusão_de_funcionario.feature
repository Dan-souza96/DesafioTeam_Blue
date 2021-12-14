#language: pt 
#encoding: utf-8


Funcionalidade: Excluir funcionario

@excluir_funcionario
Cenário: Excluir funcionario
     Dado que eu esteja logado com usuario "Daniel.Souza" senha "2311" corretamente 
     Quando encontro o funcionario "818.296.170-01"
     Então apago o cadastro com sucesso.
