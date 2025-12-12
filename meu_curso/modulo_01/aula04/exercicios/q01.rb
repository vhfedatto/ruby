print "Tem dinheiro? (true/false): "; tem_dinheiro = gets.chomp == "true"
print "Tem mesa? (true/false): "; tem_mesa = gets.chomp == "true"
print "Tem reserva? (true/false): "; tem_reserva = gets.chomp == "true"
print "Está descalço? (true/false): "; descalco = gets.chomp == "true"

pode_entrar = tem_dinheiro && (tem_mesa || tem_reserva) && !descalco

puts pode_entrar ? "Entrada liberada" : "Entrada negada"