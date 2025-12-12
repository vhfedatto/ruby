# atualiza_precos.rb
precos = { pao_frances: 0.6, pao_de_queijo: 1.5, cappuccino: 6.0 }

precos[:pao_frances] = (precos[:pao_frances] * 1.10).round(2)
precos[:croissant] = 4.0
precos.delete(:pao_de_queijo)

puts "Cardápio atualizado:"
precos.each { |item, valor| puts "#{item} - R$#{valor}" }