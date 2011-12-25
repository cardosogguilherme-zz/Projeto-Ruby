# encoding uft-8
# Herança em Ruby.

class Pessoa
  
  def initialize(nome, idade, sexo)
    @nome = nome
    @idade = idade
    @sexo = sexo
  end
  
  def to_s
    "Nome: #@nome, Idade: #@idade, Sexo: #@sexo."
  end
  
end

class Americano < Pessoa
  
  def initialize(nome, idade, sexo, say_hi)
    super(nome, idade, sexo)
    @say_hi = say_hi
  end
    
  def sayHi
    puts @say_hi
  end
  
  # Como disse, vou mudar o .to_s:
  def to_s
    super + " Cumprimento: #@say_hi"
    # O .to_s retorna a string com os três dados básicos da Pessoa, o super recebe essa string e concatena com @say_hi
    # Moleza!
  end
  
end

tiosan = Americano.new("Jhonny", 30, "M", "Hello my friend!")
tiosan.sayHi # --> Isso executa: Hello my friend!
puts tiosan.to_s # --> Agora isso executa: Nome: Jhonny, Idade: 30, Sexo: M. Cumprimento: Hello my friend!

# Por fim, vamos conhecer outra coisinha legal em Inheritance3.rb!