require_relative "../lib/Dado.rb"

class Yatzee

	def initialize
		@dados=[Dado.new,Dado.new,Dado.new,Dado.new,Dado.new]
		@total=0
	end

	def total 
		@total
	end

	def sumar_resultados_dados
		@dados.each {|dado|	@total+=dado.valor}
	end

	def get_dado index
		@dados[index]
	end

end
