# CONVERSÃO DE TIPOS #

x = "19"
y = 19
z = true

puts "O tipo da variável 'x' é #{x.class}"
puts "O tipo da variável 'y' é #{y.class}"
puts "O tipo da variável 'z' é #{z.class}"
puts "O tipo da variável 'x' é inteiro? #{x.kind_of?(Integer)}"

puts "\n=== Convertendo ===\n\n"

x = x.to_i 
y = y.to_f 
z = z.to_s

puts "O tipo da variável 'x' é #{x.class}"
puts "O tipo da variável 'y' é #{y.class}"
puts "O tipo da variável 'z' é #{z.class}"
puts "O tipo da variável 'x' é inteiro? #{x.kind_of?(Integer)}"


# Comandos novos #
# .class -> vê qual o tipo da variável
# .kind_of?(tipo) -> Analisa (true/false) se o tipo da variável é o que você pediu.