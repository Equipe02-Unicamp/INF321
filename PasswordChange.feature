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

@negativo @SenhasDiferentes
Cenario: Tentativa de troca de senha com campos diferentes ou inválidos
  E que ele preencha todos os campos com os seugintes dados:
    |  currentPassword  |  NewPassword  |  RepeatPassword    |
    | <currentPassword> | <NewPassword> | <RepeatPassword>   |
  Quando ele aciona o botão de Change Password
  Então deverá ser apresentada a mensagem "<mensagem>" e o botão assume o estado "<botao>"
Exemplos: 
  | currentPassword | NewPassword | RepeatPassword   |       message              |  botao        |
  |     password    |   123456    |     654321       | "Both password must match" |  bloqueado    |
  |     00000000    |   123456    |     123456       | "Incorrect password"       |  bloqueado    |
