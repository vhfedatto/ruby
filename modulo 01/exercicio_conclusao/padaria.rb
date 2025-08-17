def introd
  logo = "ATOC TERMINAL®"
  loading = "..."
  logo2 = "By. Fedatto"
  local = "== New York | 1990 | =="
  season = "      ⋇ Winter ⋇       "

  puts ""
  logo.each_char do |char|
    print char
    sleep 0.3
  end
  puts ""

  loading.each_char do |char|
    print char
    sleep 0.8
  end
  puts ""

  logo2.each_char do |char|
    print char
    sleep 0.5
  end
  puts "\n\n"
  local.each_char do |char|
    print char
    sleep 0.6
  end
  puts ""

  season.each_char do |char|
    print char
    sleep 0.3
  end
  puts ""

  loading.each_char do |char|
    print char
    sleep 0.8
  end
  
  puts ""
  puts "       Bom dia! Seja bem-vindo à Breads Co.       "
  sleep 1
  sleep 1
  map
end

def map
puts" +-----------------------------------------------+ "
puts" |                   q^-_-^p                     | "
puts" |       _________________________________       | "
puts" |       [  OoOOOo                ()()() ]       | "
puts" |       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾       | "
puts" |                                               | "
puts" |      :) [a] o     o [b] o       o [c] (:      | "
puts" |                                               | "
puts" |      :) [e] (:    o [g] o      :) [i] o       | "
puts" |       o [f] o     o [h] (:     :) [j] o       | "
puts" |                                               | "
puts" |       o [l] o                   o [d] o       | "
puts" |                                               | "
puts" |                   ==Porta==                   | "
puts" +--------------------- [ .]---------------------+ "
end


puts " _____        _____       _         _"    
puts "|   | |___   |  _  |___ _| |___ ___|_|___" 
puts "| | | | .'|  |   __| .'| . | .'|  _| | .'|"
puts "|_|___|__,|  |__|  |__,|___|__,|_| |_|__,|"

puts ""
puts "              == New Game ==              "
puts "              ==== Exit ====              "
puts ""
print "[1] Novo jogo, [2] Sair "
x = gets.chomp.to_i

while x != 1 && x != 2
  puts "Comando desconhecido"
  print "[1] Novo jogo, [2] Sair "
  x = gets.chomp.to_i
end

if x == 1
  introd
elsif x == 2
  exit!
end

                                          

                                          