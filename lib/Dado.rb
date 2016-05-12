class Dado
	def initialize
		@value=0
	end
	
	def valor
		@value
	end

	def lanzar (val=0)
		if val==0 then 	@value=rand(6)+1
		else @value=val
		end
	end

end
