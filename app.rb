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
	@resultado3=@@juego.get_dado(2).lanzar
	@resultado4=@@juego.get_dado(3).lanzar 4
	@resultado5=@@juego.get_dado(4).lanzar 
	@@juego.sumar_resultados_dados
	@resultado_total=@@juego.total
	@mensaje=@@juego.mensaje_final
	
	erb :yatzee
end

post '/relanzarDado' do
	@resultado=@@juego.get_dado(0).lanzar 
	@resultado2=@@juego.get_dado(1).lanzar 
	@resultado3=@@juego.get_dado(2).lanzar
	@resultado4=@@juego.get_dado(3).lanzar 4
	@resultado5=@@juego.get_dado(4).lanzar 
	@@juego.sumar_resultados_dados
	@resultado_total=@@juego.total
	erb :yatzee
end
