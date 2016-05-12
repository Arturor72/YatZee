require_relative "../lib/Yatzee.rb"

describe "Juego de Yatzee" do

	it "Iniciar juego, total 0" do
     	juego = Yatzee.new
		juego.total.should == 0
	end

	it "Dado con valor 5, obtener resultado igual a 5 " do
     	juego = Yatzee.new
		juego.get_dado.lanzar 5
		juego.total.should == 5		
	end
end
