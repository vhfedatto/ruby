# fila_clientes.rb
fila = ["Ana", "Bruno", "Carla"]

fila << "Diego"       # adiciona ao final
fila.unshift("Zoe")   # adiciona no início

atendido = fila.shift # remove o primeiro
puts "Atendido: #{atendido}"

puts "Fila final:"
fila.each { |nome| puts "- #{nome}" }