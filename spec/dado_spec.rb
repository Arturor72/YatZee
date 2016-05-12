require_relative "../lib/Dado.rb"
describe "Dados Yatzee" do

	it "Empieza en 0" do
	dado= Dado.new
	dado.valor.should == 0
	end

	
	it "Lanzar dado" do
	dado= Dado.new
	dado.lanzar 5.should ==5
	end

end


