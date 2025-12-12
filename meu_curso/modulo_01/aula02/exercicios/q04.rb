# Fedatto's Answer 15.08.2025 #

# USANDO WHILE #
print "Escolha um número inteiro: "
n = gets.chomp.to_i
i = 0

while i < 11
  puts "#{n} * #{i} = #{n * i}"
  i += 1
end


# USANDO TIMES #
=begin 

11.times do
  puts "#{n} * #{i} = #{n * i}"
  i += 1
end 

=end