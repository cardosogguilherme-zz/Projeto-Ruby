# encoding: utf-8

=begin
	Há 3 maneira de importar um arquivo em ruby
	load "path absoluto ou relativo": Que simplesmente copia o código do arquivo do path
	require "path absoluto ou path da variável $.": Que checa se há código duplicado antes de copiar o código
	require_relative "path relativo": Faz o mesmo que o require, mas admite caminhos relativos
=end

#require "/home/stomp/Ruby/panda.rb"

#require_relative "panda.rb"

#load "panda.rb"

panda = Panda.new("Lee",  100 , 10)

panda.saudacao
