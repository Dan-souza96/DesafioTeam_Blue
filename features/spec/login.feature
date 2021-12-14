#language: pt
#encoding: utf-8

Funcionalidade: Logar

 @entrar_como_usuario
 Cenario: entrar com o meu usuario
      Dado que eu esteja na pagina de login 
      Quando preencha os campos usuario "Daniel.Souza" senha "2311" corretamente 
      Então entro na pagina com sucesso.
