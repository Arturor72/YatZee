require_relative "../lib/Yatzee.rb"

describe "Juego de Yatzee" do

	it "Iniciar juego, total 0" do
     	juego = Yatzee.new
		juego.total.should == 0
	end

	it "Dados tienen los valores [1,2,3,4,5], obtener resultado igual a 15 " do
     	juego = Yatzee.new
		juego.get_dado(0).lanzar 1
		juego.get_dado(1).lanzar 2
		juego.get_dado(2).lanzar 3
		juego.get_dado(3).lanzar 4
		juego.get_dado(4).lanzar 5
		juego.sumar_resultados_dados
		juego.total.should == 15		
	end


end
