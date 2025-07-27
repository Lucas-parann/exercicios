# language: pt

Funcionalidade: Finalizar cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o cliente está na página de checkout

  Cenário: Cadastro com todos os dados obrigatórios
    Quando o cliente preenche todos os campos obrigatórios corretamente
    E clica no botão "Finalizar compra"
    Então o cadastro deve ser concluído com sucesso
    E a compra deve ser finalizada

  Esquema do Cenário: Campos inválidos no formulário de cadastro
    Quando o cliente inserir <nome>, <sobrenome>, <email>, <cidade>, <estado>, <cep> e clicar em "Finalizar compra"
    Então o sistema deve exibir uma mensagem de erro

    Exemplos:
      | nome  | sobrenome | email              | cidade     | estado | cep        |
      | João  | Silva     | joao.com           | São Paulo  | SP     | 12345-678  |
      | Maria | Souza     | maria@email        |            | RJ     | 98765-432  |
      |       | Lima      | lima@email.com     | Recife     | PE     | 45678-123  |
  
  Cenário: Cadastro com campos vazios
    Quando o cliente tenta finalizar a compra sem preencher os campos obrigatórios
    Então o sistema deve exibir uma mensagem de alerta informando que há campos vazios
