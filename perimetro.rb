#!/usr/bin/env ruby



#clase perimetro
class Perimetro
	
	#Contructor
	def initialize (num)
		@perimetro = num
		@pi = 3.14
	end
	
	#Metodo calcular perimetro
	def calculoperimetro
		resultado = (@perimetro)/(@pi)/2
		return resultado
	end
		
end


#main
def main
	print "Introducir perimetro: "
	STDOUT.flush #flush limpia la basura del flujo de entrada
	perimet = gets.chomp
	perimet = perimet.to_r #lo pasa a tipo real

	calculo = Perimetro.new(perimet)#se crea un objeto de la clase perimetro
	print "Perimetro: " 
	puts calculo.calculoperimetro
end

#menu
menu = 2
while menu != 0
	puts "|Practica4..LPP..UnitTesting|"
	puts "|___________________________|"
	puts "|---------------------------|"	
	puts "|- 1 - Calcular perimetro   |"
	puts "|- 0 - Salir                |"
	puts "|---------------------------|"
	puts "|___________________________|"
	STDOUT.flush
	menu = gets.chomp
	menu = menu.to_i #lo pasa a tipo entero
	if menu == 1
		main
	end
 end
