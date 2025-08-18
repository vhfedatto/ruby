<div>
    <img src="../../../assets/banner/banner-estruturas.jpg">
</div>

<br>

<div align="center">

# 🍣 Aula 04 – Estruturas e Fluxos Avançados em Ruby  

### [Operadores Lógicos](#-operadores-lógicos-avançados) • [Ranges](#-ranges) • [Iteradores Avançados](#-iteradores-avançados) • [Strings](#-manipulação-de-strings) • [Números](#7️⃣-manipulação-de-números)  

<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" />
<img src="https://img.shields.io/badge/Lógica-%23FFB347?style=for-the-badge" />
<img src="https://img.shields.io/badge/Ranges-%23FFD700?style=for-the-badge" />
<img src="https://img.shields.io/badge/Iteradores-%2390EE90?style=for-the-badge" />

</div>

## 🧠 OPERADORES LÓGICOS AVANÇADOS

No restaurante, o garçom decide se pode servir um cliente dependendo de algumas regras:

- O cliente tem dinheiro e há mesa disponível → pode entrar.
- O cliente não tem dinheiro ou não há mesa → não entra.

```ruby
tem_dinheiro = true
tem_mesa = false

if tem_dinheiro && tem_mesa
  puts "Pode entrar no restaurante!"
else
  puts "Infelizmente, não pode entrar."
end
```

### <u>Operadores principais</u>

```&&``` → **E** lógico (as duas condições precisam ser verdadeiras)

```||``` → **OU** lógico (basta uma ser verdadeira)

```!``` → **NÃO** lógico (inverte o valor booleano)

```and, or``` → funcionam parecido, mas com **prioridade diferente** (menos usados no dia a dia)

```ruby
cliente_fiel = true
desconto = false

if cliente_fiel || desconto
  puts "Cliente recebe benefício!"
end
```

---

<br>

## 📆 RANGES (Intervalos)

Um range é como a numeração das mesas do restaurante: vai de 1 até 10.

Em Ruby, ranges são objetos poderosos.

### <u>Sintaxe</u>
- ```1..10``` → Inclui o 10
- ```1...10``` → Exclui o 10

```ruby
mesas = (1..5).to_a #.to_a → Para Array
puts mesas.inspect  # => [1, 2, 3, 4, 5]
```

Pode-se usar para verificações:
```ruby
idade = 25
if (18..65).include?(idade)
  puts "Idade permitida para trabalhar no restaurante."
end
```

---

<br>

## 📈 ITERADORES AVANÇADOS

Até agora você usou ```.each```, mas Ruby tem métodos muito poderosos para coleções (arrays e hashes).

### <u>Map - transformar elementos</u>
O sushiman Tanaka prepara ```sushis``` e os entrega cortados em ```caixas```.

> _"É usado para transformar os elementos de uma coleção (como arrays, hashes ou ranges) e retornar uma nova coleção com os resultados dessa transformação"_ - Gemini

```ruby
ingredientes = ["salmão", "atum", "pepino"]

sushis = ingredientes.map do |ing|
  "Sushi de #{ing}"
end

puts sushis.inspect
# => ["Sushi de salmão", "Sushi de atum", "Sushi de pepino"]
```


### <u>Select – filtrar elementos</u>
O garçom só quer mesas livres.

> _"Serve para filtrar elementos com base em uma condição especificada em um bloco. Ele retorna um novo array contendo apenas os elementos para os quais o bloco retorna_ ```true```" - Gemini

```ruby
mesas = [true, false, true, false, true]

livres = mesas.select { |m| m == true }
puts livres.inspect
# => [true, true, true]
```

### <u>Reject – o contrário de select</u>

> _"Cria um novo objeto contendo apenas os elementos que não satisfazem a condição especificada em um bloco."_ - Gemini

```ruby
mesas = [true, false, true, false, true]

ocupadas = mesas.reject { |m| m == true }
puts ocupadas.inspect
# => [false, false]
```

### <u>Reduce (ou inject) – acumular valores</u>
O caixa soma os preços do pedido.

> _"É usado para iterar sobre os elementos de um array e combiná-los em um único valor."_

```ruby
conta = [10.0, 20.0, 15.0]

total = conta.reduce(0) { |soma, valor| soma + valor }
puts "Total: R$#{total}"   # => Total: R$45.0
```

---

<br>

## 🈸 MANIPULAÇÃO DE STRINGS

📌 Strings no Ruby têm muitos métodos úteis.

No restaurante, precisamos formatar o cardápio.

### <u>Métodos Básicos</u>

```ruby
txt = "   sushi   "

puts txt.strip                  # remove espaços -> "sushi"
puts txt.upcase                 # "   SUSHI   "
puts txt.downcase               # "   sushi   "
puts "Sushi".include?("shi")    # true
puts "Sushi".gsub("shi", "cha") # "Sucha"
```

#### Em resumo:
- ```.strip``` → remove espaços em branco;
- ```.upcase``` → Coloca tudo em maiúsculo;
- ```.downcase``` → Coloca tudo em minúsculo;
- ```.include?``` → Vê se determinada parte faz parte da palavra;
- ```.gsub``` → substitui a primeira parte pela segunda


### <u>Interpolação</u>

#### Sintaxe: ```#{}```

Serve para colocar alguma variável dentro de uma String que será apresentada para o usuário através da saída. Nesse caso: ```prato = sushi```. Ao colocar ```puts "#{prato}"```, será apresentado: "sushi".

```ruby
prato = "sushi"
preco = 25
puts "O #{prato} custa R$#{preco}"
```

---

<br>

## 7️⃣ MANIPULAÇÃO DE NÚMEROS

Ruby também oferece muitos métodos para números:

```ruby
preco = 19.99
puts preco.ceil      # 20 
puts preco.floor     # 19 

pi = 3.14159
puts preco.round(2)  # 3.14

quantidade = -5
puts quantidade.abs  # 5
```

#### Em resumo:
- ```.round("valor")``` → Arredonda para o inteiro mais próximo
    - Ele pode ser usado para arredondar para o inteiro mais próximo ou para um número específico de casas decimais. 
- ```.ceil``` → Arredonda para cima
- ```.floor``` → Arredonda para baixo
- ```.abs``` → É usado para obter o valor absoluto de um número

---
<br>

Faça os [EXERCÍCIOS](../exercicios/exercicios.md) da aula 03

Bons Estudos

---

<br>

<div align="center">
    <img src="../../../assets/logo/logo-fedatto.png" width="150px">
</div>