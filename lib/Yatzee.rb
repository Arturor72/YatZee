require_relative "../lib/Dado.rb"

class Yatzee

	def initialize
		@dado=Dado.new
		@total=0
	end

	def total
		@total=@dado.valor
	end

	def get_dado
		@dado
	end

end
