<img src="../../../assets/banner/introducao.jpg" />

# INTRODUÇÃO À LINGUAGEM RUBY

### Índice
- [História](#-história)
- [Por que aprender?](#-por-que-aprender-ruby)
- [Onde é usado?](#-onde-ruby-é-usado)
- [Bibliografia](#-bibliografia)
- [Rodapé](#informações-adicionais)

<br>

## 📜 História
Ruby foi criado em 1993 (mas lançado somente em 1995), no Japão, por Yukihiro Matsumoto (Matz). Ela é uma linguagem de programação de [tipagem forte](#i-tipagem) e [dinâmica](#i-tipagem).

O objetivo de Matz era unir a simplicidade do [Perl](#ii-perl) com orientação a objetos do [Smalltalk](#iii-smalltalk) adicionando a praticidade do Python e a flexibilidade do [Lisp](#iv-lisp).

Ruby ganhou notoriedade mundial principalmente após o lançamento do Ruby on Rails (2004–2005), um framework web que revolucionou a forma de construir aplicações, tornando o desenvolvimento mais rápido e elegante.

Ruby nasceu para tornar a programação **divertida**, **expressiva** e **poderosa**. Excelente para quem quer aprender conceitos sólidos de orientação a objetos, aumentar a produtividade e explorar o desenvolvimento web com um dos frameworks mais influentes da história, o Rails.

<br>

## 🎯 Por que aprender Ruby?

#### <u>1. Sintaxe simples e elegante</u>
- Ruby é legível, quase como inglês. Isso facilita o aprendizado, especialmente para quem está começando a programar.

#### <u>2. Totalmente orientado a objetos</u>
- Em Ruby, tudo é objeto (até números e nil). Isso ajuda a entender conceitos fundamentais da programação moderna.

#### <u>3. Produtividade</u>
- Ruby foi pensado para tornar o programador feliz. Ele reduz a burocracia e permite focar na lógica do problema.

#### <u>4. Porta de entrada para frameworks poderosos</u>
- Aprender Ruby é também abrir caminho para o Rails, que ainda é usado em startups, empresas e projetos de larga escala.

<br>

## 🌍 Onde Ruby é usado?

- **Desenvolvimento web**: Com Ruby on Rails. Empresas que usaram ou usam Rails: _GitHub_, _Airbnb_, _SoundCloud_.

- **Automação de tarefas e scripts**: Ruby é ótimo para criar scripts rápidos e automatizar processos, substituindo até shell scripts mais complexos.

- **Testes automatizados**: Frameworks como RSpec e Cucumber são muito usados para testes de software.

- **Educação**: Curva de aprendizado suave

<br>

## 📚 Bibliografia

Os livros e documentações que utilizei para aprimorar os meus conhecimentos e usar como base para esse mini-curso de Ruby estão nos links abaixo:

[📃 Documentação Oficial](https://www.ruby-lang.org/pt/documentation/)

[📃 Gitbooks](https://unbcjr.gitbooks.io/learning-ruby/content/index.html)

[📕 The Ruby Programming Language](https://github.com/maniramakumar/the-best-ruby-books/blob/master/books/The%20Ruby%20Programming%20Language.pdf)

[📕 Ruby Wizardry](https://github.com/maniramakumar/the-best-ruby-books/blob/master/books/Ruby%20Wizardry%20-%20An%20Introduction%20to%20Programming%20for%20Kids.pdf)

---

<br>

## Informações Adicionais

### I. Tipagem

> _Tipagem forte_: Ruby não deixa misturar tipos de qualquer jeito.

```ruby
10 + "5"   # dá erro ❌
10 + "5".to_i  # funciona ✅ (vira 15)
```
> _Tipagem dinâmica_: Quer dizer que você não precisa dizer qual tipo a variável é.

```ruby
x = 10       # aqui é um número
x = "olá"    # agora virou uma palavra
```

### II. Perl 

> É uma linguagem de programação criada nos anos 80, famosa por ser ótima em lidar com textos (como arquivos, relatórios, dados). Ruby se inspira na parte da praticidade e flexibilidade.

> Um lema do Perl é: “_There’s more than one way to do it_” (há mais de um jeito de fazer)

<div align="center">
    <img src="../../../assets/icons/perl-icon.svg" width="80px">
</div>


### III. Smalltalk

> É uma linguagem criada nos anos 70. Foi uma das primeiras a trabalhar com **tudo é um objeto**. A inspiração para Ruby vem exatamente dessa ideia (tudo é objeto - inclusive números, nulo etc.). Foi muito importante na criação da **programação orientada a objetos**

<div align="center">
    <img src="../../../assets/icons/smalltalk-icon.svg" width="110px">
</div>


### IV. Lisp

> É uma linguagem criada nos anos 50, sendo ela, uma das mais antigas que **AINDA** existe. É famosa pelo uso de parênteses.

```lisp
(+ 1 2) ; resultado é 3
```

> Foi inspiração para Ruby na parte da flexibilidade e do poder de expressar ideias diferentes. Muitas ideias de inteligência artificial começaram em Lisp.

<div align="center">
    <img src="../../../assets/icons/lisp-icon.svg" width="80px">
</div>

---
<br>

<div align="center">
    <img src="../../../assets/logo/logo-fedatto.png" width="170px">
</div>
