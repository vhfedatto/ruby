<div>
    <img src="../../../assets/banner/banner-complementos.jpg">
</div>

<br>

<div align="center">

# ✨ Aula Extra – Complementos do Ruby Básico

### [Constantes e Variáveis Globais](#-constantes-e-variáveis-globais) • [Métodos Úteis para Arrays e Hashes](#-métodos-úteis-para-arrays-e-hashes) • [Datas-e-Horas](#-datas-e-horas) • [Boas-Práticas](#-boas-práticas)

<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" />
<img src="https://img.shields.io/badge/Arrays%2FHashes-%23FFB347?style=for-the-badge" />
<img src="https://img.shields.io/badge/Date%2FTime-%23FFD700?style=for-the-badge" />
<img src="https://img.shields.io/badge/Best%20Practices-%2390EE90?style=for-the-badge" />

</div>

---

<br>

## 🔠 CONSTANTES E VARIÁVEIS GLOBAIS

Em Ruby, existem diferentes tipos de variáveis, além das **locais**.

### Forma simplificada:
- `nome = "João"` → variável local
- `$global = "sou global"` → acessível em qualquer lugar
- `NOME = "constante"` → valor que **não deve mudar**
- `@variavel_instancia` → usada dentro de objetos/classe
- `@@variavel_classe` → compartilhada em todas as instâncias de uma classe

```ruby
nome = "Maria"
$global = "Visível em qualquer lugar"
NOME = "Ruby"

puts nome
puts $global
puts NOME
```

### Explicação técnica:
- Variáveis começam com símbolos que indicam seu escopo.  
- Constantes podem até ser alteradas, mas Ruby dá um **aviso**.  
- O uso correto de cada tipo ajuda a manter o código organizado.

---

<br>

## 🧩 MÉTODOS ÚTEIS PARA ARRAYS E HASHES

Ruby tem vários métodos prontos que tornam a vida mais fácil.

### Arrays
```ruby
numeros = [5, 2, 8, 2, 3]

puts numeros.uniq.inspect     # remove duplicados
puts numeros.sort.inspect     # ordena
puts numeros.reverse.inspect  # inverte ordem
```

### Hashes
```ruby
cardapio = { cafe: 3.0, cha: 2.5, suco: 5.0 }

puts cardapio.keys.inspect    # => [:cafe, :cha, :suco]
puts cardapio.values.inspect  # => [3.0, 2.5, 5.0]

outro = { bolo: 4.0 }
puts cardapio.merge(outro).inspect
```

---

<br>

## ⏰ DATAS E HORAS

Lidar com datas é essencial em qualquer sistema.

### Forma simplificada:
```ruby
agora = Time.now
puts agora
```

### Métodos úteis:
```ruby
puts Time.now.strftime("%d/%m/%Y %H:%M")  # formata
puts Time.new(2025, 1, 1)                 # cria data específica
```

### Explicação técnica:
- `Time.now` retorna um objeto da classe `Time`.
- `.strftime` permite formatações (dia, mês, ano, hora, etc).
- É útil para registros, logs e relatórios.

---

<br>

## 📏 BOAS PRÁTICAS

Assim como manter uma biblioteca organizada ajuda os leitores, boas práticas organizam seu código.

### Comentários
```ruby
# Isso é um comentário
# Use para explicar trechos importantes
```

### Convenções Ruby
- Use `snake_case` para variáveis e métodos → `meu_metodo`
- Use `CamelCase` para classes e módulos → `MinhaClasse`
- Constantes em `MAIUSCULO` → `TAXA`
- Indentação com 2 espaços

### Exemplo:
```ruby
# Correto
taxa = 0.1

def calcula_total(valor)
  valor + (valor * taxa)
end
```

---

<br>

## ✅ RESUMO DA AULA EXTRA
- Constantes (`NOME`) e variáveis globais (`$nome`) ampliam o controle de escopo.
- Arrays e Hashes têm métodos úteis como `uniq`, `sort`, `reverse`, `merge`.
- Manipular datas e horas com `Time` e `strftime` é essencial para sistemas reais.
- Boas práticas garantem código limpo e fácil de manter.

---

<br>

Faça os [EXERCÍCIOS](../exercicios/exercicios.md) da aula extra

Bons Estudos!

---

<br>

<div align="center">
    <img src="../../../assets/logo/logo-fedatto.png" width="150px">
</div>
