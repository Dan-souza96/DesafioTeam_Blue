#language: pt 
#encoding: utf-8

Funcionalidade: Editando funcionario

@editar_funcionario
Cenário: Editar funcionario 
    Dado que eu esteja logado com usuario "Daniel.Souza" senha "2311" corretamente 
    Quando encontro o funcionario "818.296.170-01" edito o cargo dele para "motorista"
    Então salvo com sucesso.