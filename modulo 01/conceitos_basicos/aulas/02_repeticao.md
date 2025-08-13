<div align="center">
    <img src="../../../assets/banner/macaco-chico.jpg" />
</div>

# Estrutura de Condição e Repetição

[introdução]

1. Condicionais
a) if
b) elsif
c) else
2. Repetição
a) While
b) Until
c) Times
d) Each
e) For

## 0. O que é o "end"?

O **end** é usado para fechar blocos no Ruby. Assim, ele é utilizado para indicar onde termina:
- um método;
- uma função;
- um if;
- um loop;

> Ele seria o equivalente a: {} do Java.

## 1. Condicionais
### 📌 Definição:
Uma condicional é como quando uma pessoa precisa escolher o que fazer baseado em uma situação.
> Analogia: imagine o Macaco Chico. Ele está no alto de uma árvore e vê bananas lá embaixo. Ele só vai descer **se** tiver bananas maduras.

```ruby
tem_banana = true

if tem_banana
    puts "O Macaco Chico desce da árvore para comer!"
end
```

### If-Else - Escolhendo entre dois caminhos:

> É quando o Macaco Chico pensa: 
> - "Se tiver banana madura → comer."
> - "Se não → ficar na sombra."

```ruby
tem_banana_madura = false

if tem_banana_madura
    puts "O Macaco Chico come a banana!"
else
    puts "O Macaco Chico fica descansando."
end
```

### If-Elsif-Else - Várias possibilidades

> Agora, Chico é exigente:
> - "Se a banana estiver madura → comer."  
> - "Se estiver verde → esperar."
> - "Se não tiver banana → procurar outra árvore."

```ruby
estado_banana = "verde"

if estado_banana == "madura"
    puts "Chico come!"

elsif estado_banana == "verde"
    puts "Chico espera amadurecer."

else
    puts "Chico procura outra árvore."

end
```

### Operador Ternário (atalho)

Chico decide rápido.

```ruby
tem_banana = true
puts tem_banana ? "Chico come!" : "Chico espera."
```

> condição ? se_verdadeiro : se_falso

---

## 02. Estruturas de repetição

É usado quando desejamos fazer uma mesma ação várias vezes até que uma condição mude. É o famoso **loop**.

### While - repete enquanto algo for verdadeiro

Chico joga cocos até acabar a pilha.

```ruby
cocos = 3

while cocos > 0
    puts "Chico joga um coco!"
    cocos -= 1
end

puts "Acabaram os cocos!"
```

> Enquanto ```cocos > 0```, Chico continua jogando.

### Until - Repetir até algo acontecer

Exemplo: Chico pula de galho em galho **até** achar um cacho de bananas.

> É o oposto do While

```ruby
achou_banana = false

until achou_banana
    puts "Chico pula para outro galho."
    achou_banana = [true, false].sample #simula achar ou não
end

puts "Chico achou as bananas!"
```

### Times - repetir um número fixo de vezes

Chico bate palma 5 vezes

```ruby
5.times do
    puts "clap"
end
```

### Each - Repetindo para cada item de uma lista

Chico come cada banana de um cacho

```ruby
cacho = ["banana 01", "banana 02", "banana 03"]

cacho.each do |banana|
    puts "Chico come #{banana}!"
end
```

### For in range

```ruby
for banana in cacho
    puts "Chico come #{banana}!"
end
```

---

## Código final de revisão

```ruby
cacho = ["madura", "madura", "verde", "madura"]

cacho.each do |banana|
    if banana == "verde"
        puts "Ops! Banana verde. Chico para de comer."
        break
    end
    puts "Chico come a banana madura!"
end
```

---

## Revisão dos conceitos:

- if/else → o macaco decide o que fazer.
- while → o macaco continua até cansar.
- until → o macaco continua até conseguir algo.
- times → o macaco repete um número fixo de vezes.
- each → o macaco repete para cada item de um cacho.
- break → o macaco para tudo.
