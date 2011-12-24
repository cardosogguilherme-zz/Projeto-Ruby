# encoding uft-8
# Era isso mesmo! Massa! :D
# Uma observação: Não precisava criar dois métodos, era só passar o bloco na hora de chamar.
# Vou comentar o seu código e mostrar:

=begin  
  def fazNada (a, b)
  	yield(a, b)
  end
  
  def juntaInverte (a, b)
  	fazNada(a, b){|x, y|  puts (x+y).reverse}
  end
  
  #fazNada("oi","ola"){|x, y| puts x+y}
  
  juntaInverte("far", "inha")
=end

def fazNada (a, b)
  yield(a, b)
end

fazNada("oi","ola") { 
  |x, y| puts (x+y).reverse
}

# Acho que assim ficou mais limpo.
# O que acha?