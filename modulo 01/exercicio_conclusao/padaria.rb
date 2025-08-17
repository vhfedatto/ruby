# REGIÃO DO SISTEMA - NÃO MEXER! 
def carregando(tempo_load)
  loading = "..."

  loading.each_char do |char|
    print char
    sleep tempo_load
  end
  puts ""
end

def typewrite(txt, vel)
  txt.each_char do |char|
    print char
    sleep vel
  end
end

def limpar_terminal(so)
  if so == "Windows"
    system("cls")
  elsif so == "MacOS" || so == "Linux"
    system("clear")
  end
end

def pedir(tecla_de_que, usados)
  loop do
    print "Botão para #{tecla_de_que}: "
    t = gets.chomp.strip.downcase
    return t unless t.empty? || usados.include?(t)
    puts t.empty? ? "|X| Não pode ficar em branco. |X|" : "|X| Botão já usado como atalho. Escolha outro. |X|"
  end
end
# REGIÃO DO SISTEMA - NÃO MEXER! 

def criacao
  $info = {}

  tempo_load = 1

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
  loop do
    print "Qual o seu nome? "
    nome = gets.chomp

    if nome.downcase == ENV['USERNAME']
    break

    else
      puts "Não minta para mim, #{ENV['USERNAME']}\n\n"
      print "Vai usar esse nome mesmo, #{nome}? [S/N]"
      ctz = gets.chomp.downcase

      case ctz
      when "s"
        puts "Certo, mentiroso."
        $info[:nome] = nome
        break
      when "n"
        puts""

      else 
        puts "Comando desconhecido\n\n"
      end 
    end
  end

  show.call($info[:nome])
  
  #IDADE
  print "Qual a sua idade? "
  idade = gets.chomp.to_i
  
  
  # SISTEMA OPERACIONAL
  $info[:idade] = idade
  show.call($info[:nome], $info[:idade])
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

  $info[:so] = so
  show.call($info[:nome], $info[:idade], $info[:so]); sleep 1
  # Adicionar aqui uma forma do usuário editar as informações caso alguma esteja errada.

  limpar_terminal(so)


  # PERSONALIZAÇÃO #
  txt = "Essa frase é apenas para fins de testes. Essa será a sensação ao ler os textos do jogo nessa velocidade."
  puts "Vamos personalizar algumas coisas!\n\n"
  

  # VELOCIDADE DE TEXTO
  loop do
    puts "============================="
    puts "|    VELOCIDADE DE TEXTO    |"
    puts "=============================\n\n"; sleep 1
    puts "Escolha a opção que mais lhe agrada:"
    carregando(0.5)
    puts "[1]0.05s \n[2]0.1s \n[3]0.2s\n[4]Personalizar"
    print "=== Comando: "
    vel = gets.chomp
    puts"\n"
    
    case vel
    when "1"
      vel = 0.05

      puts "Velocidade do texto: | #{vel} |"; sleep 0.1

      typewrite(txt, vel)

      puts "\n---"
      puts "Gostou da velocidade do texto?"
      print "[S/N] "
      x = gets.chomp.downcase

      if x == "s"
        carregando(tempo_load)
        $info[:vel] = vel
        break
      
      elsif x == "n"
        puts "Indo para o menu para mudar"
        limpar_terminal(so)

      else
        puts "Comando desconhecido"
        limpar_terminal(so)

      end
    
    when "2"
      vel = 0.1

      puts "Velocidade do texto: | #{vel} |"; sleep 0.3

      typewrite(txt, vel)

      puts "\n---"
      puts "Gostou da velocidade do texto?"
      print "[S/N] "
      x = gets.chomp.downcase

      if x == "s"
        carregando(tempo_load)
        $info[:vel] = vel
        break
      
      elsif x == "n"
        puts "Indo para o menu para mudar"
        limpar_terminal(so)

      else
        puts "Comando desconhecido"
        limpar_terminal(so)
        
      end
    
    when "3" 
      vel = 0.2

      puts "Velocidade do texto: | #{vel} |"; sleep 0.3

      typewrite(txt, vel)

      puts "\n---"
      puts "Gostou da velocidade do texto?"
      print "[S/N] "
      x = gets.chomp.downcase

      if x == "s"
        carregando(tempo_load)
        $info[:vel] = vel
        break
      
      elsif x == "n"
        puts "Indo para o menu para mudar"
        limpar_terminal(so)

      else
        puts "Comando desconhecido"
        limpar_terminal(so)
      end

    when "4" 
      vel = nil

      print"Qual a velocidade que você deseja? [0.00] "
      vel = gets.chomp.to_f

      puts "Velocidade do texto: | #{vel} |"; sleep 0.3

      typewrite(txt, vel)

      puts "\n---"
      puts "Gostou da velocidade do texto?"
      print "[S/N] "
      x = gets.chomp.downcase

      if x == "s"
        carregando(tempo_load)
        $info[:vel] = vel
        break
      
      elsif x == "n"
        puts "Indo para o menu para mudar"
        limpar_terminal(so)

      else
        puts "Comando desconhecido"
        limpar_terminal(so)
      end

    else
      puts "Opção inválida."
    end
  end

  # ATALHOS DO TECLADO
  txt = "Agora vamos definir os botões que você usará durante a sua aventura. Lembro-lhe que podes usar apenas botões de números e letras para esses atalhos."

  puts "============================="
  puts "|    ATALHOS DO TECLADO     |"
  puts "=============================\n\n"; sleep 1

  typewrite(txt, $info[:vel])
  puts ""

  $atalhos = {}
  usados = []

  $atalhos[:confirmar] = pedir("confirmar", usados); usados << $atalhos[:confirmar]
  $atalhos[:cancelar] = pedir("cancelar", usados); usados << $atalhos[:cancelar]
  $atalhos[:mapa] = pedir("mapa", usados); usados << $atalhos[:mapa]
  $atalhos[:menu] = pedir("menu", usados); usados << $atalhos[:menu]
  
  puts "\nAtalhos definidos:"
  $atalhos.each do |acao, tecla|
    puts "#{acao.capitalize}: #{tecla}"
  end
  
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

  puts $info

elsif x == 2
  exit!
end                                          