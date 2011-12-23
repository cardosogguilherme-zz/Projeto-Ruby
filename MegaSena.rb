#Cria um sorteio da Mega Sena; Uma array com 6 números aleatórios de 1 a 100.
resultado = (1..100).to_a.shuffle.take(6)

=begin
 Vamos lá, resultado é igual a um range de 1 até 100.
 Depois eu chamo o método .to_a que nada mais é do que: To Array, logo meu range vira um array.
 Agora chamo o método .shuffle, ele embaralha minha array de forma aleatória.
 Por fim o método .take, que pega os n primeiros elementos de uma array e cira outra. Sendo n = ao parâmetro 1. No caso, 6.
 Voilá, 6 números aleatórios em uma array, sendo o menor possível 1 e o maior possível 100.
=end

#Exibir array; Um exemplo de "foreach" em Ruby. (For each matriculas as mat, print mat)
resultado.each {|mat| print mat, " "}
puts "" #Eu coloquei isso pra ele quebrar a linha no final, pois o print não quebra linha, só o puts.

=begin
 Aqui é interessante notar que matrículas, por ser uma array, logo é um objeto em Ruby, então cabe a ele* métodos.
 .each é um método de Ruby, para entender essa parte, é bom entender sobre blocos de código e yield.
 Mas basicamente é isso, ele cria uma espécie de foreach.
 
 *Cabe a tudo, tudo é objeto!
=end