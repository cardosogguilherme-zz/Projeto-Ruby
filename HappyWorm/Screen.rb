class Screen  
  def clear
    print "\e[H\e[2J" #Quando isso é impresso, o terminal limpa a tela.
  end  
  def delay(time) # Sempre float, 1.0 = 1 segundo.
    sleep time
  end
end

class Land
  def initialize
    @ground = %w{ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }
  end
  def show
    @ground.each {|cell| print cell}
    puts
  end
end

frame = Screen.new
here = Land.new

while true
  frame.clear
  here.show
  frame.delay(1.0)  
end