<img src="assets/banner/introducao.jpg" />

# CONCEITOS BÁSICOS

### Nessa aula você vai aprender:

- [Entrada e Saída de dados](#entrada-e-saída)
- [Variáveis](#-variáveis)
    - [Tipos de variáveis](#-tipos-de-variáveis)
    - [Conversão]()

<br>

## Entrada e Saída de dados

> _"O computador é como uma pessoa com quem você **conversa**: você fala (entrada) e ele responde (saída)."_

### 📝 Saída de Dados
Quando você quer que o computador fale alguma coisa para você ("_printe_" na tela), você usa comandos de saída.

### 1. **puts** 
Sempre pula uma linha depois.
> _Imagina que o ```puts``` é como quando você fala alto e ainda dá um “enter” no final._

```ruby
puts "Oi, tudo bem?"
puts "Meu nome é Victor"
```
_Saída_:
```cmd
Oi, tudo bem?
Meu nome é Victor
```

### 2. **print** 

Ele mostra, mas não pula de linha automaticamente (se quiser, use ```\n``` para pular).

> _Já o ```print``` é como falar baixinho e não dar enter._

```ruby
print "Oi, "
print "tudo bem?"
```

_Saída_:
```cmd
Oi, tudo bem?
```

### 3. **p**

Bom para debug (testar seu código).

> _O ```p``` é como um raio-x: ele mostra o valor exatamente como o Ruby entende._

```ruby
p "Oi"
p 5
p [1, 2, 3]
```

_Saída_:
```cmd
"Oi"
5
[1, 2, 3]
```

### 🎤 Entrada de Dados

No caso da entrada de dados, é quando o computador faz uma pergunta e você responde digitando.

### 1. **gets.chomp**
Pensa que ```gets``` é como o computador **pegar** (do inglês: **to get**) o que você digitou. Ele sempre guarda como texto (String).

Contudo, o ```gets``` também pega o **Enter** que você deu no final para enviar. Para isso usamos o ```.chomp```, que serve como uma tesoura, cortando o Enter final.

```ruby
print "Qual o seu nome?"
nome = gets.chomp

puts "Olá, #{nome}!"

# gets → recebe do teclado.
# .chomp → remove o \n do final.
# #{} → insere variáveis dentro de strings. 
```

O gets, como dito anteriormente, tudo que ele pega, é uma String. Se você quiser números, precisa [converter a entrada](#-conversão-de-tipos):

```ruby
puts "Digite sua idade:"
idade = gets.chomp.to_i
puts "Ano que vem você terá #{idade + 1} anos."
```

> OBS: Mais abaixo você lerá a respeito desse ```.to_i``` e entenderá o que ele significa.

### 🎭 Saída com interpolação

Interpolação é como colocar uma janela dentro da frase para mostrar variáveis. Em Ruby, usamos ```" #{} "``` dentro de aspas duplas.

```ruby
nome = "Victor"
idade = 20
puts "Meu nome é #{nome} e tenho #{idade} anos."
```

_Saída_:
```cmd
Meu nome é Victor e tenho 20 anos.
```

---

<br>

## 🎈 Variáveis
Uma variável nada mais é que uma <u>caixa com nome</u> que guarda (armazena) alguma coisa (um número, uma palavra, uma lista etc.)

```ruby
suco = "laranja"
idade = 15
nota = 9.9
menu = {pao: 3.0, baguete: 4.0}
```
### 🎨 _Tipos de Variáveis_

Em Ruby, cada variável pode ter tipos diferentes de coisas dentro. As principais são:

#### 1. **String** (palavra)

```ruby
#Deve estar sempre entre aspas 

suco = "laranja"
```

#### 2. **Integer** (número inteiro)
```ruby
#Números sem vírgula (positivo, negativo...) 

idade = 20
```

#### 3. **Float** (número com vírgula)
```ruby
#Números decimais (usa-se apenas ponto) 

nota = 9.9
```

#### 4. **Boolean** (Verdadeiro ou Falso)
```ruby
#Represena lógica: true or false 

estudante = true
```

#### 5. **Array** (lista de coisas)
```ruby
#Uma coleção de valores 

frutas = ["maçã", "banana", "uva"]
```

#### 6. **Hash** (como um dicionário)
```ruby
#Guarda pares de chave → valor 

pessoa = {"nome" => "Victor", "idade" => 20}

menu = {pao: 3.0, baguete: 4.0, suco: 1.5}
```

#### 7. **Symbol** (objeto imutável)
```ruby
# Sempre começa com : 
# Símbolo é apenas um objeto que ocupa sempre o mesmo espaço na memória.
# Usado para representar algo.

nome = :victor
nome2 = :victor

puts "nome.object_id, nome2.object_id"
#Ambos vão estar no mesmo canto na memória.
```

### 🔄 Conversão de Tipos
Em Ruby, os valores já têm um tipo, mas você pode converter usando métodos próprios.
Isso é útil quando a entrada vem como string (ex.: [gets.chomp]()), mas você quer fazer contas, ou quando quer transformar números em texto para concatenar.

```ruby
var = "19"

var.to_s     # String
var.to_i     # Integer
var.to_f     # Float
var.to_sym   # Symbol
!!var        # Boolean
```

---

<br>

## Operadores Matemáticos

Os operadores matemáticos são as operações usadas para realizar contas com números.

- Soma (+)

- Subtração (-)

- Multiplicação (*)

- Divisão (/) --- ⚠️Atenção: se dividir números inteiros, o Ruby dá inteiro (arredonda para baixo). 

- Módulo (%)

- Exponenciação (**) - (Potência)
```ruby

puts 5 + 2      # 7
puts 5 - 2      # 3
puts 5 * 2      # 10
puts 5 / 2      # 2 (divisão de inteiros = inteiro)
puts 5 % 2      # 1
puts 5 ** 2     # 25

```

## Atribuição com operadores

Atualizar valores ao longo do código.

```ruby
x = 10
x += 5   # igual a x = x + 5
puts x   # 15

x -= 3   # igual a x = x - 3
puts x   # 12

x *= 2   # igual a x = x * 2
puts x   # 24

x /= 4   # igual a x = x / 4
puts x   # 6
```

## ⚖️ Operadores de Comparação

São usados para comparar valores. Eles respondem sempre true ou false.

```ruby
# ==== IGUAL (==) ====
puts 5 == 5   # true
puts 5 == 4   # false

# ==== DIFERENTE (!=) ====
puts 5 != 4   # true
puts 5 != 5   # false

# ==== MAIOR (>) / MENOR (<) ====
puts 10 > 3   # true
puts 2 < 1    # false

# ==== MAIOR OU IGUAL (>=) / MENOR OU IGUAL (<=) ====
puts 5 >= 5   # true
puts 3 <= 2   # false
```

## 🔗 Operadores Lógicos

Agora entramos na lógica, como se fosse responder "sim" ou "não".

### 1. AND (&&)
Só é verdadeiro se as duas condições forem verdadeiras.
```ruby
idade = 20
tem_carteira = true

puts idade >= 18 && tem_carteira   # true
```
> “Tenho 18 anos E carteira de motorista?”

### 2. OR (||)
É verdadeiro se pelo menos uma condição for verdadeira.

```ruby
sol = false
feriado = true

puts sol || feriado   # true
```
> “Hoje tem sol OU é feriado?” Basta um ser verdadeiro.

### 3. NOT (!)
Inverte o valor lógico.

```ruby
estudando = false
puts !estudando   # true
```

> “Não estou estudando” vira verdadeiro se eu realmente não estiver.

<br>

## 🧮 4. Operadores de comparação extra

### SPACESHIP (<=>)
Retorna
- ```-1``` se o da esquerda for menor;
- ```0``` se forem iguais
- ```1``` se o da esquerda for maior;

```ruby
puts 5 <=> 10   # -1
puts 10 <=> 10  # 0
puts 15 <=> 10  # 1
```

> É usado bastante em ordenação.

---

Até a Próxima aula!

Bons estudos!

---
<br>
<div align="center">
    <img src="assets/logo/logo-fedatto.png" width="150px">
</div>