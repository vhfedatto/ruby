pães = ["Pão francês", "Pão de queijo"]

pães << "Focaccia"            # Adiciona ao final
pães.push("Pão integral")     # Também adiciona ao final
pães.unshift("Ciabatta")      # Adiciona no início

pães.pop    # Remove o último
pães.shift  # Remove o primeiro

puts pães.length   # Quantos itens
puts pães.empty?   # Está vazio? (true/false)