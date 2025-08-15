print "Digite a sua média (0-10): "
gpa = gets.chomp.to_f

if gpa > 10
  puts "Média inválida"

elsif gpa < 0
  puts "Média inválida"

else
  if gpa >= 7
    puts "Aprovado"
    
  elsif gpa >= 5 && gpa <= 6.9
    puts "Recuperação"

  else
    puts "Reprovado"

  end
end