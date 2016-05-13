require_relative "../lib/Dado.rb"

class Yatzee

	def initialize
		@dados=[Dado.new,Dado.new,Dado.new,Dado.new,Dado.new]
		@total=0
		@mensaje="Aun no tienes puntos"
		@lanzamientos=0
	end

	def total 
		@total
	end

	def sumar_resultados_dados
		@total=0
		@dados.each {|dado|	@total+=dado.valor}
	end

	def get_dado index
		@dados[index]
	end

	def get_dados
		@dados
	end
	def lanzamientos 
		@lanzamientos
	end

	def incrementar_lanzamientos
		@lanzamientos=@lanzamientos+1
	end

	def lanzar_dados (arreglo_dados=@dados,vals=0)
		if vals == 0
			arreglo_dados.each {|dado| dado.lanzar}
		else
			arreglo_dados.each_with_index {|dado,index| dado.lanzar(vals[index])}
		end
		incrementar_lanzamientos
		
	end
	
	def mensaje_final
	
		if total>=20
			 @mensaje= "Ganaste"
		end
		if @lanzamientos == 3 and total<20
				@mensaje="Game over" 
		end
		@mensaje
	end
end
