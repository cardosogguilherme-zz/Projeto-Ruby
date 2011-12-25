# encoding uft-8
# Herança em Ruby.

class Pessoa
  
  def initialize(nome, idade, sexo)
    @nome = nome
    @idade = idade
    @sexo = sexo
  end
  
  def to_s
    "Nome: #@nome, Idade: #@idade, Sexo: #@sexo." # Usar #@var é o mesmo que #{@var}
    # Lembrando, o método retorna a última expressão.
  end
  
end

class Americano < Pessoa # Americano agora herda de Pessoa.
  
  def initialize(nome, idade, sexo, say_hi)
    super(nome, idade, sexo) # O super é importante no Ruby.
    # Ele passa para o mesmo método da classe mãe (No caso o initialize de Pessoa) os parâmetros recebidos.
    # Depoi de criadas as variáveis de instância como no modelo de pessoa, vamos add outra variável: say_hi.
    # Ela vai armazenar como os americanos dizem oi.
    @say_hi = say_hi
  end
  
  # Eu poderia definir outro método, por exemplo: to_s e usar o super dentro dele.
  # O super procura na classe mãe pelo mesmo método, passa os parâmetros (se tiver) e executa.
  # Se o método retornar alguma coisa, o super guarda nele o valor.
  
  # Note que o método .to_s já existe no Ruby. Mas os métodos podem ser reescritos sempre que necessário.
  # Quando eu aplico .to_s em um objeto de Americano, ele vai procurar na classe Americano esse método,
  # caso exista, ele executa, caso não, ele procura na classe mãe, no caso: Pessoa.
  # Como eu tenho esse método em Pessoa, ele vai executa-lo. Porém, se não tivesse, ele iria executar o .to_s do Ruby.
  # Isso porque em Ruby, toda classe herda por natureza os métodos da classe Object. E ela contém todos os métodos do Ruby.
  
  def sayHi
    puts @say_hi
  end
  
end

tiosan = Americano.new("Jhonny", 30, "M", "Hello my friend!")
tiosan.sayHi # --> Isso executa: Hello my friend!
puts tiosan.to_s # --> Isso executa: Nome: Jhonny, Idade: 30, Sexo: M.
# Quando usamos .to_s em tiosan, não sabemos como ele diz oi, pois o .to_s já foi escrito em Pessoa para mostrar somente:
# nome, idade e sexo.

# Vamos mudar o .to_s! Para isso, ver: Inheritance2.rb