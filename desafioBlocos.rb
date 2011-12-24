# encoding uft-8

def fazNada (a, b)
	yield(a, b)
end

def juntaInverte (a, b)
	fazNada(a, b){|x, y|  puts (x+y).reverse}
end

#fazNada("oi","ola"){|x, y| puts x+y}

juntaInverte("far", "inha")
