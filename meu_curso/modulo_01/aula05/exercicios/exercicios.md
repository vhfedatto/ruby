
# 📗 Exercícios – **Aula 04 (Biblioteca)**
**Tópicos**: Leitura e escrita com `File`, modos de abertura, tratamento de erros.  
Cada exercício tem **enunciado** e **resolução**.

---

## 1) Escrever e ler notas (write + read)
**Enunciado**  
Peça ao usuário uma **nota** de leitura e salve em `nota.txt` com `File.write`. Depois, leia e imprima com `File.read`.

**Resolução**
```ruby
# nota.rb
print "Escreva sua nota da leitura: "
nota = gets.chomp

File.write("nota.txt", nota)
puts "Conteúdo salvo."
puts "Lendo de volta:"
puts File.read("nota.txt")
```

---

## 2) Log de empréstimos (append com 'a')
**Enunciado**  
Crie um log `emprestimos.txt`. Cada execução deve **acrescentar** uma nova linha no formato:  
`AAAA-MM-DD HH:MM - Título do livro` (use `Time.now`).

**Resolução**
```ruby
# emprestimos.rb
print "Título do livro: "
titulo = gets.chomp

linha = "#{Time.now.strftime('%Y-%m-%d %H:%M')} - #{titulo}"
File.open("emprestimos.txt", "a") { |f| f.puts linha }

puts "Registro adicionado."
```

---

## 3) Leitura e escrita no mesmo arquivo (r+)
**Enunciado**  
Crie `resumo.txt` com um texto inicial. Depois, abra com `"r+"`, leia o começo e acrescente **no final** a linha: `"— Revisado"`.

**Resolução**
```ruby
# resumo.rb
File.write("resumo.txt", "Resenha inicial.\n")

File.open("resumo.txt", "r+") do |f|
  inicio = f.read(15) # lê alguns bytes
  f.seek(0, IO::SEEK_END) # vai para o fim
  f.puts "— Revisado"
  puts "Início lido: #{inicio.inspect}"
end
```

---

## 4) Tratamento de erros (rescue específico)
**Enunciado**  
Tente ler `catalogo_inexistente.txt`. Caso não exista, mostre `"Arquivo não encontrado"` SEM quebrar o programa.

**Resolução**
```ruby
# erro_arquivo.rb
begin
  puts File.read("catalogo_inexistente.txt")
rescue Errno::ENOENT
  puts "Arquivo não encontrado"
end
```

---

## 5) Catálogo da biblioteca (mini-sistema)
**Enunciado**  
Implemente:
- `salvar_catalogo(hash)` → grava `catalogo.txt` no formato `titulo - autor` (um por linha).  
- `carregar_catalogo` → lê e devolve um **array de strings**.  
- Programa principal: permite **adicionar** 3 livros (título + autor), salva e depois **lê e imprime** o catálogo.

**Resolução**
```ruby
# catalogo.rb
def salvar_catalogo(livros)
  File.open("catalogo.txt", "w") do |f|
    livros.each { |t, a| f.puts "#{t} - #{a}" }
  end
end

def carregar_catalogo
  return [] unless File.exist?("catalogo.txt")
  File.read("catalogo.txt").split("\n")
end

# --- Execução ---
livros = {}

3.times do |i|
  print "Título #{i+1}: "; titulo = gets.chomp
  print "Autor  #{i+1}: "; autor  = gets.chomp
  livros[titulo] = autor
end

salvar_catalogo(livros)

puts "\n=== Catálogo ==="
carregar_catalogo.each { |linha| puts linha }
```
