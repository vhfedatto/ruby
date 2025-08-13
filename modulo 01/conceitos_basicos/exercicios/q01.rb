=begin
Questão 01 - Conversão de Variáveis

Peça ao usuário a idade em anos (como texto), converta para número inteiro e calcule:
- Quantos meses de vida (aprox.)
- Quantos dias de vida (aprox., 365 por ano)
- Depois, imprima tudo como string formatada 
=end

puts "Qual a sua idade?"
idade_texto = gets.chomp
idade = idade_texto.to_i

idade_meses = idade * 12 
idade_dias = idade * 365

puts "Você tem #{idade_meses} meses de vida."
puts "Você tem #{idade_dias} dias de vida."