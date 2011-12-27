# encoding: utf-8

class Panda
	attr_writer :name, :hp, :hit
	attr_reader :name, :hp, :hit
	def initialize(nm,hp,hit)
		self.name = nm
		self.hp = hp
		self.hit = hit
	end

	def saudacao
		puts "Ola! Meu nome é #{self.name}"
	end
end
