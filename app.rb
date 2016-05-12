require 'sinatra'
require_relative "./lib/Dado.rb"
require_relative "./lib/Yatzee.rb"

get '/' do
	@@juego=Yatzee.new
	@resultado_total=@@juego.total
	erb :yatzee
end

post '/lanzarDado' do
	@resultado=@@juego.get_dado(0).lanzar 
	@resultado2=@@juego.get_dado(1).lanzar 
	@@juego.sumar_resultados_dados
	@resultado_total=@@juego.total
	erb :yatzee
end
