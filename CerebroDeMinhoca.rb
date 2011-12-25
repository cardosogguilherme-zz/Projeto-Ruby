# encoding: utf-8

#Cerebro de minhoca

=begin
Como funciona:
A minhoca nasce com fome, vida no máximo(10) e humor zero(se chora é pq não ta feliz)
Se o tempo passar e a minhoca estiver a barriga vazia ela perde um ponto de vida
Se o tempo passar e a minhoca não estiver com, pelo menos, metade da barriga cheia ela perde um ponto de humor(podemos fazer que quanto menor o humor mais rápido ela deve andar)
Se o tempo passar e a minhoca estiver com ,pelo menos, metade da barriga cheia ela ganha um ponto de humor
=end
class Minhoca

	def initialize
		puts "BUUUUAAAAAAA."
		@comida = 10
		@vida = 10
		@humor = 0
	end

	def jantar
		puts "Nhac"
		if @comida < 10
			@comida += 1
		end
		if @comida > 5
			puts "To de boas"
			if @humor <10
				@humor += 1
			end
		else
			puts "To com fome!"
			if @humor >0
				@humor -= 1
			end
		end
	end

	def estado
		puts "Comida = "+@comida.to_s
		puts "Vida = "+@vida.to_s
		puts "Humor = "+@humor.to_s
	end	

	def semJantar

		if @comida >0
			@comida -= 1
		end
		if @comida == 0
			puts "Não me sinto muito bem"
			@vida -= 1
		end
		if @vida == 0
			puts 'murri!'			
			exit
		end
	end

end

fred = Minhoca.new

bilhete = rand(10)+1

=begin
while true
	escolha = gets
	if escolha.to_i == 1
		puts "a minhoca achou comida"
		fred.jantar
		fred.estado
	else
		fred.semJantar
		fred.estado
	end
end
=end


while true
	gets
	if (rand(10)+1) == bilhete
		fred.jantar
		fred.estado
		bilhete = rand(10)+1
	else
		fred.semJantar
		fred.estado
	end
end

