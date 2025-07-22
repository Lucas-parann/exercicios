#language: pt

Funcionalidade:login na plataforma
Commo cliente EBAC_SHOP
Quero fazer o login/autentificação na plataforma
Para visulizar meus pedidos 

Cenário: Login com dados válidos
    Quando o cliente digita um e-mail válido e uma senha válida
    E clica no botão "Login"
    Então deve ser redirecionado para a tela de checkout

  Esquema do Cenário: Login com dados inválidos
    Quando o cliente digita <usuario> e <senha> inválidos
    E clica no botão "Login"
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

        Exemplos:
      | usuário              | senha         |
      | usuario@invalido.com | senhaerrada   |
      |                      | senha123      |
      | usuario@email.com    |               |
      |                      |               |


