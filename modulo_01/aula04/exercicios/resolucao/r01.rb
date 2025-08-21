print "Qual o seu nome? "
cliente = gets.chomp
print "Está descalço? [S/N] "
descalco = gets.chomp.downcase
tem_dinheiro = true

if descalco == "s" || descalco == "sim"
  descalco = true
elsif descalco == "n" || descalco == "nao"
  descalco = false
else
  puts "Comando desconhecido"
  exit!
end


tem_mesa = rand(2) == 0 # Gera true or false aleatoriamente
tem_reserva = rand(2) == 0

if tem_dinheiro && (tem_mesa || tem_reserva) && !descalco
  puts "Entrada liberada"
else
  puts "Entrada negada"
end