#language:pt
#encoding:utf-8

@Account
Funcionalidade: Cadastro de conta
  Como usuário do app
  Juca deseja cadastrar uma conta
  Para que ele possa acessar a plataforma
  
Contexto:
  Dado que é o primeiro acesso de "Juca" na plataforma



Scenario Outline: Creating a new account
  Given the account balance is $<balance>
    And the card is valid
    And the machine contains enough money  
   When the Account Holder requests $<requested>
   Then the ATM should dispense $<dispenced>
    And the account balance should be $<new-balance>
    And the card should be returned
  Examples: 
    | fisrt-name | last-name | age | register-id | 
    | Juca      | Fernandes | 32  | 50227852-7  | 
  
  