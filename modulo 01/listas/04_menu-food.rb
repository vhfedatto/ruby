menu = {
  bagel: 1.00,
  baguette: 2.50,
  dinner_roll: 0.50,
  croissant: 3.00
}

def show_menu(menu)
  puts "=== Menu ==="
  menu.each do |item, price|
    puts "#{item}: $#{price}"
  end
end

def order_item(menu, order)
  if menu.key?(order)
    puts "You order #{order}, price: $#{menu[order]}"
  
  else
    puts "Item not found."
  end
end

show_menu(menu)
print "Choose an item to order: "
chosen_item = gets.chomp.downcase.to_sym
order_item(menu, chosen_item)


=begin

------ APRENDIZADOS DO CÓDIGO ------

print -> Não adiciona uma nova linha após a saída
puts -> Adiciona uma nova linha após cada saída
p -> Exibe a representação textual do objeto, incluindo detalhes como aspas em strings e novas linhas.

.downcase -> Transformar uma string em letras minúsculas.
.upcase -> Transformar uma string em letras maiúsculas.

.to_sym -> Converter uma string em um símbolo (symbol). Símbolos são definidos usando dois pontos antes do nome: :symbol. Símbolos são objetos únicos que representam nomes, e são frequentemente usados como chaves em hashes ou como argumentos de métodos

.key? -> Verificar se uma chave específica existe em um hash. Retorna true/false.

=end
