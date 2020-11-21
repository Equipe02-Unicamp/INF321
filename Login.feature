#language:pt
#encoding:utf-8

@Login
Funcionalidade: Login do usuário
  Como usuário do app
  Juca deseja fazer o Login
  Para que ele possa acessar sua conta

Contexto:
  Dado que "Juca" possui uma conta válida

@positivo @FazerLogin
Cenario: Login valido
  E que ele preenche corretamente seus dados na tela de Login
  Quando ele aciona o botão de Login
  Então a home deve ser apresentada

@negativo @FazerLoginIncorreto
Cenario: Tentativa de login com senha inválida
  E que ele preenche todos os campos corretamente na tela de login exceto o campo senha
  E que ele preenche a senha errada
  Então deverá ser apresentada uma tela de erro informando que os dados são inválidos.

@negativo @ErrarSenha3Vezes
Cenario: Tentativa de login com senha inválida mais de 3 vezes
  E que ele preenche todos os campos corretamente na tela de login exceto o campo senha
  E que ele preenche a senha errada
  Quando ele errar a senha por mais de 3 vezes
  Então deverá ser apresentada uma tela para redefinição de senha
