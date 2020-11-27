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
Cenario: Tentativa de login com dados invalidos
  E que ele preenche os campos com os seguintes dados:
    | email     | senha   |
    | <email>   | <senha> |
  Então o sistema deverá apresentar a mensagem "<mensagem>"
Exemplos: 
  | email           | senha     | mensagem                                         |
  | asdasdasdasdad  | Fernandes | Login Failed. Username or Password is incorrect  |
  | juca@gmail.com  | asdasdasd | Login Failed. Username or Password is incorrect  |
  | juca@gmail.com  |           | Login Failed. Username or Password is incorrect  |
  |                 |           | Login Failed. Username or Password is incorrect  |
