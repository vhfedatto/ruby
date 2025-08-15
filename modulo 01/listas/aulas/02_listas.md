<div align="center">
  <img src="../../../assets/banner/banner-listas.jpg" />
</div>

# Arrays, Hashes e Métodos no Ruby

### Na Aula 01, vimos:

- Variáveis, tipos e conversão
- Entrada e saída (gets, puts)
- Operadores
- Condicionais (if, elsif, else)
- Loops (while, until, times, each)




Agora vamos para estruturas de dados mais poderosas e a criação de métodos para organizar o código.

---

## 1. Arrays (listas)
### 📌 Definição:
Um Array é como uma prateleira onde o Sr. Louis guarda pães em sequência. Cada pão está em uma posição (índice), começando no 0. Não é muito comum, mas Ruby permite que você misture dados em um array.

```ruby
pães = ["Pão francês", "Pão de queijo", "Croissant"]

puts pães[0]  # => "Pão francês"
puts pães[2]  # => "Croissant"
```

### 🧰 Operações Básicas
```ruby
pães = ["Pão francês", "Pão de queijo"]

pães << "Focaccia"            # Adiciona ao final
pães.push("Pão integral")     # Também adiciona ao final
pães.unshift("Ciabatta")      # Adiciona no início

pães.pop    # Remove o último
pães.shift  # Remove o primeiro

puts pães.length   # Quantos itens
puts pães.empty?   # Está vazio? (true/false)
```
#### Percorrendo Arrays

```ruby
pães.each do |pão|
  puts "Temos: #{pão}"

end
```
```ruby
pães.each_with_index do |pão, i|
  puts "Posição #{i}: #{pão}"

end
```

### Revisão de Arrays
| Método | O que faz |
| --- | :---: |
| .unshift | Add no início |
| .push | Add no fim |
| .shift | Remove o primeiro |
| .pop | Remove o último |
| .lenght | Vê o tamanho |
| .empty? | Vázio? |
| .each_with_index | Acessa o valor **e** o index |

---

## 2. Hashes (dicionários)
### 📌 Definição:
Um Hash é como um cardápio da padaria: cada item tem um nome (chave) e um valor (preço, por exemplo).

```ruby
cardapio{
  "Pão francês" => 0.50,
  "Pão de queijo" => 1.20,
  "Croissant" => 3.00
}

puts cardápio["Croissant"]  # => 3.0
```
### Símbolos como chaves (mais usado)
```ruby
cardápio = {
  pao_frances: 0.50,
  pao_de_queijo: 1.20,
  croissant: 3.00
}

puts cardápio[:pao_frances]
```

### Operações com Hashes

```ruby
cardapio[:focaccia] = 4.50    # Adiciona
cardapio.delete(:croissant)   # Remove
puts cardapio.keys            # Todas as chaves
puts cardapio.values          # Todos os valores
```
### Percorrendo hashes

```ruby
cardapio.each do |item, preço|
  puts "#{item}: R$#{preço}"

end
```

## 3. Métodos (funções no Ruby)
### 📌 Definição:
Um método é como uma receita que o Sr Louis segue para preparar algo. Você escreve uma vez e pode usar sempre que precisar.

#### Criando um método simples
```ruby
def saudacao
  puts "Bem-vindo à Padaria do Sr. Louis!"
end

saudacao  # chama o método
```
#### Métodos com parâmetros
```ruby
def preco_com_desconto(preço, desconto)
  preço - (preço * desconto / 100)
end

puts preco_com_desconto(10.0, 20) # => 8.0
```

#### Retorno de métodos
No Ruby, o **último valor** calculado é retornado automaticamente.

```ruby
def soma(a, b)
  a + b
end

resultado = soma(3, 5) # resultado = 8
puts resultado
```

## 4. Juntando todos os conceitos:
```ruby
cardápio = {
  pao_frances: 0.50,
  pao_de_queijo: 1.20,
  croissant: 3.00
}

def mostrar_cardapio(cardápio)
  puts "=== Cardápio ==="
  cardápio.each do |item, preço|
    puts "#{item}: R$#{preço}"
  end
end

def pedir_item(cardápio, pedido)
  if cardápio.key?(pedido)
    puts "Você pediu #{pedido}, preço: R$#{cardápio[pedido]}"
  else
    puts "Item não encontrado."
  end
end

mostrar_cardapio(cardápio)
print "Digite o nome do item (ex: pao_frances): "
item_escolhido = gets.chomp.to_sym
pedir_item(cardápio, item_escolhido)
```

[Arrays](#1-arrays-listas)
