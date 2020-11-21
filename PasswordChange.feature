#language:pt
#encoding:utf-8

@PasswordChange
Funcionalidade: Trocar senha do usuário
  Como usuário do app
  José deseja trocar sua senha de Login
  Para que ele possa acessar sua conta

Contexto:
  Dado que "José" possui uma conta válida.

@positivo @TrocarSenha
Cenario: Troca de senha com sucesso
  E que ele preencha corretamente seus dados na tela de Troca de senha
  Quando ele aciona o botão de Change Password
  Então deverá ser apresentada a mensagem de request completado com sucesso

@negativo @SenhaAtualIncorreta
Cenario: Tentativa de troca de senha com senha atual inválida
  E que ele preencha todos os campos corretamente na tela de Troca de senha, exceto a senha atual
    |  currentPassword  |  NewPassword  |  RepeatPassword    |
    | <currentPassword> | <NewPassword> | <RepeatPassword>   |
  Quando ele aciona o botão de Change Password
  Então deverá ser apresentada a mensagem de senha inválida.

@negativo @NovaSenhaDiferenteNaRepetição
Cenario: Tentativa de troca de senha com nova senha diferente da senha repitida
  E que ele preencha todos os campos corretamente na tela de Troca de senha, exceto uma senha diferente no campo de repetição de senha
  Quando ele tenta clicar no botão de Change Password
  Então o botão de Change Password deverá ser bloqueado
  E deverá ser apresentado a mensagem de "Both password must match".

Exemplos: 
  | currentPassword | NewPassword | RepeatPassword   |       message        |
  |                 |             |                  |                      |
  |                 |             |                  |                      |
  |                 |             |                  |                      |
  |                 |             |                  |                      |
