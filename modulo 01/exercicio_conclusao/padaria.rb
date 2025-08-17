# REGIÃO DO SISTEMA - NÃO MEXER! 
def carregando(tempo_load)
  loading = "..."

  loading.each_char do |char|
    print char
    sleep tempo_load
  end
  puts ""

end

def limpar_terminal(so)
  if so == "Windows"
    system("cls")
  elsif so == "MacOS" || so == "Linux"
    system("clear")
  end
end
# REGIÃO DO SISTEMA - NÃO MEXER! 

def criacao
  show   = ->(nome=nil, idade=nil, so=nil) do
    puts "\n+-------------------------+"
    puts "1. Nome = #{nome || '-'}"
    puts "2. Idade = #{idade || '-'}"
    puts "3. Sistema Operacional = #{so || '-'}"
    puts "+-------------------------+"
  end

  # Coisas para fazer aqui nessa função ainda:
  # -
  # 1. Verificação correta da idade
  # 2. Limpar o código
  # - 

  puts "\n\nSeja bem-vindo ao universo de Rubland.\n\n"
  puts "Antes de mais nada, preciso saber algumas informações a seu respeito:"
  show.call
  

  # NOME
  print "Qual o seu nome? "
  nome = gets.chomp

  if nome.downcase == ENV['USERNAME']
    puts "Muito obrigado, #{nome}!"
  
  else
    puts "Não minta para mim, #{ENV['USERNAME']}\n\n"
    print "Vai usar esse nome mesmo, #{nome}? [S/N]"
    ctz = gets.chomp.downcase

    case ctz
    when "s"
      puts "Certo, mentiroso."
    when "n"
      print "Qual o seu nome? "
      nome = gets.chomp
    end #end do CASE

  end #end do ELSE
  

  #IDADE
  show.call(nome)
  print "Qual a sua idade? "
  idade = gets.chomp.to_i


  # SISTEMA OPERACIONAL
  show.call(nome, idade)
  puts"[1] Windows\n[2] Linux\n[3] MacOS"
  print "Qual o seu Sistema Operacional? "
  so = gets.chomp

  case so
  when "1"
    so = "Windows"
  when "2"
    so = "Linux"
  when "3"
    so = "MacOS"
  end

  show.call(nome, idade, so)

  tempo_load = 1
  carregando(tempo_load)
  

  limpar_terminal(so)

end

def introd
  logo = "ATOC TERMINAL®"
  tempo_load = 0.8
  logo2 = "By. Fedatto"
  local = "== New York | 1990 | =="
  season = "      ⋇ Winter ⋇       "

  puts ""
  logo.each_char do |char|
    print char
    sleep 0.3
  end
  puts ""

  carregando(tempo_load)

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

  carregando(tempo_load)

  puts ""
  puts "       Bom dia! Seja bem-vindo à Breads Co.       "
  sleep 0.1
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



# TELA DE ABERTURA DO JOGO

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
  criacao
  introd
  cena1
elsif x == 2
  exit!
end                                          