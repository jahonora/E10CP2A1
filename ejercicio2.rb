module Formula
	def perimetro (l1, l2)
		2*(l1.to_i+l2.to_i)
	end
	def area (l1, l2)
		l1.to_i*l2.to_i
	end
end

class Rectangulo
	include Formula
	def initialize(base, altura)
		@base = base
		@altura = altura
	end

	def lados
		"#{@base}, #{@altura}"
	end
end

class Cuadrado
	include Formula
	def initialize(lado)
		@lado = lado
	end

	def lados
		"#{@lado}, #{@lado}"
	end
end

c = Cuadrado.new(10)
r = Rectangulo.new(10,5)
puts "Cuadrado"
puts "Perimetro: #{c.perimetro(*(c.lados.split(", ")))}; Area: #{c.area(*c.lados.split(", "))}"
puts "Rectangulo"
puts "Perimetro: #{r.perimetro(*r.lados.split(", "))}; Area: #{r.area(*r.lados.split(", "))}"

