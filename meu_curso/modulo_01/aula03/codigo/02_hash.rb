cardapio{
  "Pão francês" => 0.50,
  "Pão de queijo" => 1.20,
  "Croissant" => 3.00
}

puts cardápio["Croissant"]  # => 3.0

# === Simbolos (symbol) como chaves ===
cardápio = {
  pao_frances: 0.50,
  pao_de_queijo: 1.20,
  croissant: 3.00
}

puts cardápio[:pao_frances]

# === Operações ===
cardapio[:focaccia] = 4.50    # Adiciona
cardapio.delete(:croissant)   # Remove
puts cardapio.keys            # Todas as chaves
puts cardapio.values          # Todos os valores