#language:pt
#encoding:utf-8

@Account
Funcionalidade: Cadastro de conta
  Como usuário do app
  Juca deseja cadastrar uma conta
  Para que ele possa acessar a plataforma
  
Contexto:
  Dado que é o primeiro acesso de "Juca" na plataforma

@positivo @CriarConta
Cenario: Dados válidos
  E que ele preenche a tela de cadastro com dados válidos:
    |  first-name  |  last-name  |  Country  |  state  |  email  |  password  |  repeat-password  |
    | <first-name> | <last-name> | <Country> | <state> | <email> | <password> | <repeat-password> |
  Quando ele aciona o botão de criar uma conta
  Então a tela de welcome deve ser apresentada
Exemplos: 
  |  first-name  |  last-name  |  Country  |  state  |      email     |  password  |  repeat-password  |
  |    "Juca"    |   "Silva"   |  "Brazil" |    ""   |"juca@gmail.com"| "password" |     "password"    |
  |    "Juca"    |   "Silva"   |  "Brazil" |   "SP"  |"juca@gmail.com"| "password" |     "password"    |

@negativo @CriarContaDadosInvalidos
Cenario: Tentativa de cadastro com dados inválidos
  E que ele preenche os campos com os seguintes dados:
    |  first-name  |  last-name  |  Country  |  state  |  email  |  password  |  repeat-password  |
    | <first-name> | <last-name> | <Country> | <state> | <email> | <password> | <repeat-password> |
  Então o sistema deverá apresentar a mensagem "<mensagem>"
Exemplos: 
  |  first-name  |  last-name  |  Country  |  state  |      email     |  password  |  repeat-password  | mensagem                                                                                                          |
  |      ""      |      ""     |  "Brazil" |    ""   |        ""      |     ""     |         ""        | "{registration.password.not.empty} Field required User name is required Field required Email address is required" |
  |    "Juca"    |      ""     |  "Brazil" |    ""   |        ""      |     ""     |         ""        | "User name is required Field required Email address is required {registration.password.not.empty}"                |
  |    "Juca"    |   "Silva"   |  "Brazil" |    ""   |        ""      |     ""     |         ""        | "Email address is required {registration.password.not.empty} User name is required"                               |
  |    "Juca"    |   "Silva"   |  "Brazil" |    ""   |"juca@gmail.com"|     ""     |         ""        | "{registration.password.not.empty}"                                                                               |
  |    "Juca"    |   "Silva"   |  "Brazil" |    ""   |"juca@gmail.com"| "password" |         ""        | "password.notequal"                                                                                               |
  |    "Juca"    |   "Silva"   |  "Brazil" |    ""   |"juca@gmail.com"| "password" |     "password"    | "password.notequal"                                                                                               |
  |    "Juca"    |     ""      |  "Brazil" |    ""   |"juca@gmail.com"| "password" |     "password"    | "Field required"                                                                                                  |
  |    "Juca"    |   "Silva"   |  "Brazil" |   "SP"  |        ""      |     ""     |         ""        | "Email address is required {registration.password.not.empty} User name is required"                               |
