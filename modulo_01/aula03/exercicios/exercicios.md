# Exercícios Aula 03

## Quais os assuntos?
- Array
- Hash
- Métodos

## Questão 01

### Array + mutação controlada: fila de clientes

Crie uma fila (array) de clientes: ["Ana", "Bruno", "Carla"].

- Adicione “Diego” ao final e “Zoe” no início.

- Atenda (remova) o primeiro da fila e mostre quem foi atendido.

- Imprima a fila final.

---

<br>

## Questão 02
### Hash + atualização: controle de preços

Crie um hash ```precos = { pao_frances: 0.6, pao_de_queijo: 1.5, cappuccino: 6.0 }```.

- Aumente o preço do ```pao_frances``` em 10%.

- Adicione ```croissant: 4.0```.

- Remova ```pao_de_queijo```.

- Imprima o cardápio atualizado no formato: ```item - R$preco```.

---

<br>

## Questão 03 
### Métodos: impressão elegante de cardápio
Crie um método ```imprimir_cardapio(cardapio)``` que receba um hash e imprima:

```cmd
=== CARDÁPIO ===
1) pao_frances ..... "R$0.60"
2) cappuccino  ..... "R$6.00"
```
- O número deve vir da ordem de iteração (1, 2, 3…).

- Use ```each_with_index```.

- Teste com um cardápio simples.

---

<br>

## Questão 04 

### Array + Hash + método: registrar pedido

Dado um hash de preços e um array de itens pedidos, crie um método ```total_pedido(precos, itens)``` que:

- Some os valores dos itens existentes no cardápio.

- Ignore itens que não existirem (e avise no console).

- Retorne o total (float).

Teste com:
```ruby
precos = { pao_frances: 0.6, cappuccino: 6.0, croissant: 4.0 }
itens = [:pao_frances, :croissant, :suco, :cappuccino]
```

---

<br>

## Questão 05

### Tudo junto + mini “serviço”: caixa da padaria

Implemente um mini-sistema com métodos:

- ```mostrar_menu(cardapio)``` → imprime o cardápio com índices.

- ```ler_item(cardapio)``` → lê um índice e retorna a chave do item escolhido (ou ```nil``` se inválido).

- ```finalizar_conta(precos, pedidos)``` → recebe um array de símbolos de itens e calcula o total.
Fluxo: mostre o menu, permita múltiplas escolhas até o usuário digitar ```0``` para encerrar; calcule e exiba o total.

---

Bons Estudos!

By. Fedatto