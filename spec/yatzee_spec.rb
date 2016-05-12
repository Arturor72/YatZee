require_relative "../lib/Yatzee.rb"

describe "Juego de Yatzee" do

	it "Iniciar juego, total 0" do
     	juego = Yatzee.new
		juego.total.should == 0
	end

	it "Todos los Dados tienen valor [1,2,3,4,5], obtener resultado igual a 15 " do
     	juego = Yatzee.new
		juego.lanzar_dados(juego.get_dados,[1,2,3,4,5])
		juego.sumar_resultados_dados
		juego.total.should == 15		
	end

	it "Primer lanzamiento obtuvo [1,2,3,4,5], relanzar los 3 primeros dados y obtener [6,5,4], suma es 24" do
     	juego = Yatzee.new
		juego.lanzar_dados(juego.get_dados,[1,2,3,4,5])
		dado1=juego.get_dado 0
		dado2=juego.get_dado 1
		dado3=juego.get_dado 2
		dados_dummy=[dado1,dado2,dado3]
		juego.lanzar_dados(dados_dummy,[6,5,4])
		juego.sumar_resultados_dados
		juego.total.should == 24		
	end


end
