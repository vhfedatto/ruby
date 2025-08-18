# total_pedido.rb
def total_pedido(precos, itens)
  total = 0.0
  itens.each do |item|
    if precos.key?(item)
      total += precos[item]
    else
      puts "Aviso: item não encontrado no cardápio -> #{item}"
    end
  end
  total
end

precos = { pao_frances: 0.6, cappuccino: 6.0, croissant: 4.0 }
itens  = [:pao_frances, :croissant, :suco, :cappuccino]

total = total_pedido(precos, itens)
puts "Total do pedido: R$#{'%.2f' % total}"