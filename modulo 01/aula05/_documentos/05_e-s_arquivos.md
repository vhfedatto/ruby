
<div>
    <img src="../../../assets/banner/banner-biblioteca.jpg">
</div>

<br>

<div align="center">

# 📚 Aula 05 – Entrada e Saída de Arquivos em Ruby   

### [Leitura](#-leitura-de-arquivos) • [Escrita](#%EF%B8%8F-escrita-de-arquivos) • [Modos-de-abertura](#-modos-de-abertura) • [Tratamento-de-erros](#%EF%B8%8F-tratamento-de-erros)  

<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" />
<img src="https://img.shields.io/badge/Arquivos-%23FFB347?style=for-the-badge" />
<img src="https://img.shields.io/badge/Input%2FOutput-%23FFD700?style=for-the-badge" />
<img src="https://img.shields.io/badge/Erro%20Handling-%2390EE90?style=for-the-badge" />

</div>

---

<br>

## 📖 LEITURA DE ARQUIVOS

Na nossa **biblioteca**, ler um arquivo é como **abrir um livro**: você pega seu conteúdo e o traz para a memória.

### Forma simplificada:
```ruby
conteudo = File.read("livro.txt")
puts conteudo
```
- `File.read("arquivo")` → lê **todo o conteúdo** de uma vez.  
- `puts` → mostra o texto no console.  

### Forma técnica:
- O método `File.read` abre o arquivo, lê todo seu conteúdo como **string** e o fecha automaticamente.  
- É prático, mas **não serve para arquivos enormes**, porque carrega tudo de uma vez.  

---

<br>

## ✍️ ESCRITA DE ARQUIVOS

Escrever em um arquivo é como **anotar em um caderno**: você guarda informações para ler depois.

### Forma simplificada:
```ruby
File.write("anotacoes.txt", "Ruby é divertido!")
```

- Se o arquivo **não existir**, ele será criado.  
- Se já existir, o conteúdo será **substituído**.  

### Forma técnica:
- `File.write` abre o arquivo em modo **escrita** (`w`), grava o texto e fecha automaticamente.  
- É simples e eficiente para textos curtos.  

---

<br>


## 🔑 MODOS DE ABERTURA

Às vezes você precisa escolher **como abrir um livro**: começar do zero, continuar de onde parou, ou apenas espiar.

Em Ruby, usamos **modos** para isso:

- `"r"` → leitura (read)  
- `"w"` → escrita (write) – apaga conteúdo antigo  
- `"a"` → append (acrescentar no final)  
- `"r+"` → leitura e escrita (sem apagar)  

### Exemplo:
```ruby
File.open("historico.txt", "a") do |arquivo|
  arquivo.puts "Novo registro de empréstimo"
end
```

- `File.open` → abre o arquivo no modo escolhido.  
- O bloco (`do ... end`) garante que o arquivo seja **fechado** ao final.  
- `puts` escreve uma linha dentro do arquivo.  

---

<br>

## ⚠️ TRATAMENTO DE ERROS

Na biblioteca, às vezes um livro não existe. Em Ruby, isso gera um erro.  
Podemos **tratar erros** para evitar que o programa quebre.

### Exemplo:
```ruby
begin
  conteudo = File.read("nao_existe.txt")
  puts conteudo
rescue Errno::ENOENT
  puts "Arquivo não encontrado!"
end
```

- `begin` … `rescue` → funciona como um “se der errado, faça isso”.  
- `Errno::ENOENT` → erro específico para arquivo não encontrado.  

### Explicação técnica:
- O Ruby lança **exceções** (exceptions) quando algo dá errado.  
- `rescue` captura essas exceções e permite definir uma ação alternativa.  
- Isso é útil em **sistemas de produção**, para evitar travamentos.  

---

<br>

## 📚 EXEMPLO COMPLETO – Sistema da Biblioteca

```ruby
# sistema_biblioteca.rb

# Hash representando os livros
livros = {
  "1984" => "George Orwell",
  "Dom Casmurro" => "Machado de Assis",
  "Norwegian Wood" => "Haruki Murakami"
}

# Salvar o catálogo em um arquivo
File.open("catalogo.txt", "w") do |f|
  livros.each { |titulo, autor| f.puts "#{titulo} - #{autor}" }
end

# Ler o catálogo e exibir
puts "=== Catálogo da Biblioteca ==="
begin
  conteudo = File.read("catalogo.txt")
  puts conteudo
rescue Errno::ENOENT
  puts "Catálogo não encontrado!"
end
```

---

<br>

## ✅ RESUMO DA AULA 05
- `File.read` → lê tudo de uma vez.  
- `File.write` → escreve, apagando conteúdo antigo.  
- `File.open("arquivo", "modo")` → maior controle sobre leitura e escrita.  
- Modos: `"r"`, `"w"`, `"a"`, `"r+"`.  
- `begin ... rescue` → tratamento de erros para evitar que o programa quebre.  

---

<br>

Faça os [EXERCÍCIOS](../exercicios/exercicios.md) da aula 05

Bons Estudos!

---

<br>

<div align="center">
    <img src="../../../assets/logo/logo-fedatto.png" width="150px">
</div>
