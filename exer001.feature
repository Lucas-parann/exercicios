# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  e escolher a quantidade
  Para depois inserir no carrinho

  Cenário:
    Dado que o cliente está na página do produto "Augusta Pullover Jacket"

  Esquema do Cenário: Seleção de cor, tamanho e quantidade
    Quando o cliente seleciona a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
    Então o botão "Adicionar ao carrinho" deve estar habilitado

    Exemplos:
      | cor     | tamanho | quantidade |
      | Amarelo | P       | 1          |
      | Rosa    | M       | 2          |
      | Lilás   | G       | 3          |

  Cenário: Limite máximo de produtos por venda
    Quando o cliente tenta selecionar uma quantidade maior que 10
    Então deve ser exibida uma mensagem de erro informando o limite permitido

  Cenário: Botão "limpar" reseta o formulário
    Dado que o cliente selecionou uma cor, tamanho e quantidade
    Quando o cliente clica no botão "Limpar"
    Então todas as seleções devem ser resetadas para o estado original
