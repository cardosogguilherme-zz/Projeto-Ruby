# Nesse arquivo, pretendo exemplificar o uso de Blocos de Código yield em Ruby.
# Vamos criar um método qualquer:

def soma(a, b)
  a + b  
end

=begin
 Note: Meu método não retorna nada, certo? Errado.
 Em Ruby, o valor de retorno de um método é sempre o valor da última expressão interpretada.
 Nesse caso, o método retorna o valor da soma dos parâmetros. 
=end

puts soma(5, 3) #Aqui, nossa soma. ---> 8

puts "" #Mais uma quebra de linha pra continuar \/

# Agora, vou criar outro método, desta vez com blocos e yield!

def walk(name, steps)
  yield # Por enquanto ignore isso.
  puts "Hello #{name}! You're walking #{steps} steps..."
end

# Note: Em Ruby, dentro de uma string eu posso usar #{expressão} para imprimir o resultado de algo.
# Isso facilita, pois no método a cima eu não precisei concatenar as strings com as variáveis.
# BTW, isso imrpime tudo... Até mesmo #{5+3} ou #{a+b}, é como se o Ruby executasse o código que está ali dentro.

# Vamos chamar o método: 

walk("Fernando", 10) {puts "Olha eu aqui!"}
#O que é esse { } do lado? É o bloco de código!

=begin
 Olha o que fizemos, se rodarmos isso, sairá: 
 --> Olha eu aqui!
 --> Hello Fernando! You're walking 10 steps...
 A frase "Olha eu aqui!" foi exibida em cima porque o yield está em cima da outra frase.
 O meu bloco será executado no lugar onde o yield estiver, e tudo que meu bloco faz é imprimir: "Olha eu aqui!".
 Se eu colocar o yield em baixo, a frase sairá em baixo, se eu por o yield em cima e em baixo, a frase sairá nos dois lugares!
 O YIELD EXECUTA O BLOCO!
=end

# Outra: Sabia que o yield pode conter parâmetros? Pois é...
puts "" #Mais uma quebra de linha pra continuar \/

# Vamos ver outro método agora, só que com parâmetros no yield:

def calculator(a, b)
  yield(a, b)
  a + b
end

# Este método vai retornar somente a soma de a + b, mas antes ele vai executar um bloco, passando como parâmetro a e b...
# Isso é interessante, vamos ver...

puts calculator(10, 15) {|x, y|}
# Aqui eu criei o bloco, passei os parâmetros x e y, que vão ser substituidos por a e b, mas não mandei ele fazer nada.
# Logo, ele só mostra a soma de 10 e 15. (Meu yield não tá fazendo nada, só recebendo os parâmetros)

# Vamos mandar o yield mostrar também a multiplicação!
puts "" #Mais uma quebra de linha pra continuar \/

puts calculator(10, 15) {|x, y| puts x * y}

# Agora sim! Ele exibe primeiro a multiplicação, pois o yield está em cima no método e depois a soma!

# Entendeu? Se sim...
# DESAFIO: Crie um método que receba 2 parâmetros, o método não fará nada, apenas chamará yield com os mesmos parâmetros.
# Toda vez que o método for chamado, com os devidos parâmetros, crie um bloco com os mesmos parâmetros mas com nomes diferentes.
# O bloco deverá pegar os dois parâmetros (que serão strings) e junta-los em uma só. Depois exibi-la ao contrário, ex:
# farinha = ahniraf

# Dica: veja o método .reverse :)