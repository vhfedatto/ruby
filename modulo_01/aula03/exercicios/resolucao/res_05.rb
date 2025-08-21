# caixa_padaria.rb
CARDAPIO = {
  pao_frances: 0.6,
  cappuccino: 6.0,
  croissant: 4.0,
  focaccia: 5.5
}

def mostrar_menu(cardapio)
  puts "\n=== MENU (digite o número; 0 para finalizar) ==="
  cardapio.keys.each_with_index do |item, i|
    puts "#{i + 1}) #{item} - R$#{'%.2f' % cardapio[item]}"
  end
  puts "0) Finalizar"
end

def ler_item(cardapio)
  print "Sua escolha: "
  idx = gets.chomp.to_i
  return nil if idx == 0

  chaves = cardapio.keys
  if idx.between?(1, chaves.length)
    chaves[idx - 1]  # retorna a chave (símbolo)
  else
    puts "Opção inválida."
    nil
  end
end

def finalizar_conta(precos, pedidos)
  total = 0.0
  pedidos.each { |item| total += precos[item] }
  total
end

# --- Execução ---
pedidos = []

loop do
  mostrar_menu(CARDAPIO)
  item = ler_item(CARDAPIO)
  break if item.nil? && !STDIN.ready? rescue break if item.nil? # encerra em 0

  if item
    pedidos << item
    puts "Adicionado: #{item} (R$#{'%.2f' % CARDAPIO[item]})"
  end
end

total = finalizar_conta(CARDAPIO, pedidos)
puts "\nItens pedidos: #{pedidos}"
puts "Total: R$#{'%.2f' % total}"