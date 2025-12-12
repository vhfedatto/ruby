# 3.1 OPERADORES #
a = 10
b = 3
puts a + b   # soma
puts a - b   # subtração
puts a * b   # multiplicação
puts a / b   # divisão
puts a % b   # resto


# 3.2 BOOLEANOS #
puts a > b   # true
puts a == b  # false
puts a != b  # true


# 3.3 COMPARAÇÃO #
puts a == b   # igual
puts a != b   # diferente
puts a > b    # maior que
puts a < b    # menor que
puts a >= b   # maior ou igual
puts a <= b   # menor ou igual


# 3.4 OPERADORES LÓGICOS #
# AND
condicao1 && condicao2   # true se ambas forem verdadeiras
condicao1 and condicao2  # mesma coisa, mas com prioridade diferente (usado menos)

# OR
condicao1 || condicao2   # true se pelo menos uma for verdadeira
condicao1 or condicao2   # mesmo caso do 'and' (menos usado)

# NOT
!condicao   # inverte (true → false, false → true)