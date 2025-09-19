# imprimir_cardapio.rb
def imprimir_cardapio(cardapio)
  puts "=== CARDÁPIO ==="
  cardapio.each_with_index do |(item, preco), i|
    # formata pontinhos só para ficar bonito
    linha = "#{i + 1}) #{item}"
    pontos = "." * (20 - linha.length).clamp(0, 20)
    puts "#{linha} #{pontos} R$#{'%.2f' % preco}"
  end
end

menu = { pao_frances: 0.6, cappuccino: 6.0, croissant: 4.0 }
imprimir_cardapio(menu)