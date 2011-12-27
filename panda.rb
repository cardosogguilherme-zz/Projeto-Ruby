# encoding: utf-8

=begin
	Exemplo de como gerar métodos gets e setters em Ruby

	Os métodos gets e sets são utilizados para retornar ou alterar o valor de um atributo de um objeto.
	
	O "attr_writer :atributo1, :atributo2" cria somente os métodos set dos atributos
	O "attr_reader :atributo1, :atributo2" cria somente os métodos get dos atributos
	O "attr_accessor :atributo1, :atributo2" cria tanto os métodos set como get dos atributos
	O padrão do método get criado é objeto.atributo, o padrão do set é objeto.atributo = novoAtributo
=end

class Panda
	#attr_writer :name, :hp, :hit
	#attr_reader :name, :hp, :hit
	attr_accessor :name, :hp, :hit
	def initialize(nm,hp,hit)
		self.name = nm
		self.hp = hp
		self.hit = hit
	end

	def saudacao
		puts "Ola! Meu nome é #{self.name}"
	end
end


panda = Panda.new("Pepe",100,10)
panda.saudacao
panda.name = "Pepe le Pew"
panda.saudacao
