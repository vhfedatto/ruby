print "Qual a sua idade? "; idade = gets.chomp.to_i

mesa = rand(0..30)
puts "Mesa desejada = #{mesa}"

apto = (18..65).include?(idade)
mesa_valida = (0..20).include?(mesa)

puts apto ? "Idade apta" : "Idade não apta"
puts mesa_valida ? "Mesa válida" : "Mesa inexistente"