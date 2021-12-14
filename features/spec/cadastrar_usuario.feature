#language: pt 
#encoding: utf-8

 Funcionalidade: Cadastrar usuario

 @cadastro_usuario
 Cenário: cadastrando usuario
     Dado que eu esteja na pagina de login para criar um novo usuario
     Quando preencho os campos corretamente com nome "daniely1", senha "123" por fim confirmo a senha "123"
     Então salvo o novo registro criado.