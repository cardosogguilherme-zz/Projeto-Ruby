# Pensei um pouco, acho que agora, uma boa alternativa é usar o terminal como interface gráfica.
# Dê uma olhada no princípio:

class Screen  
  def clear
    print "\e[H\e[2J" #Quando isso é impresso, o terminal limpa a tela.
  end  
  def delay(time) # Sempre float, 1.0 = 1 segundo.
    sleep time
  end  
end

frame = Screen.new

# Cuidado, aqui ele inicia um loop infinito, para sair da app ou parar o loop aperte: Ctrl + C
# Com isso ele para de executar o Ruby, ou qualquer outra coisa que esteja executando no terminal.

while true
  frame.clear
  frame.delay(1.0)
  print ":)"
  frame.delay(1.0)
  frame.clear
  frame.delay(1.0)
  print ":("
  frame.delay(1.0)
end

# O que achou?