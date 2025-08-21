# CONDIÇÕES #
idade = 18

if idade >= 18
  puts "Maior de idade"
else
  puts "Menor de idade"
end


# LOOPS #
# While
i = 0
while i < 3
  puts i
  i += 1
end


# Each (muito usado no Ruby)
[1, 2, 3].each do |numero|
  puts numero
end