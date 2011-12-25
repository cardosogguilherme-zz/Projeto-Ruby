# encoding uft-8
# Herança em Ruby.

class Pessoa
  
  def initialize(nome, idade, sexo)
    @nome = nome
    @idade = idade
    @sexo = sexo
  end
  
  attr_reader :nome, :idade, :sexo
  # attr_reader é um construtor que cria um método pra cada dado passado a ele e retorna o valor do objeto com o mesmo nome.
  # É bem interessante...
  
end 

fulano = Pessoa.new("Roger", 32, "M")
puts fulano.nome # --> Isso executa: Roger

# Por hoje é só! :)