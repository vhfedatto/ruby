# Fedatto's Answer 15.08.2025 #

puts "==== Calculator ===="
puts "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division"

print "Enter the first number: "
n1 = gets.chomp.to_f

print "Enter the second number: "
n2 = gets.chomp.to_f

print "What operation do you want? "
op = gets.chomp.to_i

if op == 1
  res = n1 + n2
  puts "#{n1} + #{n2}"
  puts "Result = #{res}"

elsif op == 2
  res = n1 - n2
  puts "#{n1} - #{n2}"
  puts "Result = #{res}"
  
elsif op == 3
  res = n1 * n2
  puts "#{n1} * #{n2}"
  puts "Result = #{res}"

elsif op == 4
  res = n1 / n2
  puts "#{n1} / #{n2}"
  puts "Result = #{res}"
  
else
  puts "Unknown operation"

end