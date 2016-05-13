require 'sinatra'
require_relative "./lib/Dado.rb"
require_relative "./lib/Yatzee.rb"

get '/' do
	@@juego=Yatzee.new
	@resultado_total=@@juego.total
	@@lanzamientos=0
	erb :yatzee
end

get '/add1s' do
	@add1="tu puntaje aqui es 3"
	@@lanzamientos=3
	erb :yatzee
end

####
post '/lanzarDado' do
	@@juego.lanzar_dados
	@resultado=@@juego.get_dado(0).valor
	@resultado2=@@juego.get_dado(1).valor
	@resultado3=@@juego.get_dado(2).valor
	@resultado4=@@juego.get_dado(3).valor
	@resultado5=@@juego.get_dado(4).valor
	@@juego.sumar_resultados_dados
	@resultado_total=@@juego.total
	@mensaje=@@juego.mensaje_final
	@@lanzamientos=@@juego.lanzamientos
	erb :yatzee
end
###
post '/relanzarDado' do

	# se obtiene el valor de los checkbox	
	dado1_selected = params[:d1_selected]
	dado2_selected = params[:d2_selected]
	dado3_selected = params[:d3_selected]
	dado4_selected = params[:d4_selected]
	dado5_selected = params[:d5_selected]
	# Se crea un arreglo con los dados seleccionados

	if dado1_selected
		@@juego.get_dado(0).lanzar
	end
	if dado2_selected
		@@juego.get_dado(1).lanzar 
	end
	if dado3_selected
		@@juego.get_dado(2).lanzar 
	end
	if dado4_selected
		@@juego.get_dado(3).lanzar 
	end
	if dado5_selected
		@@juego.get_dado(4).lanzar 
	end
	# se setean los nuevos valores en la pantalla
	@resultado=@@juego.get_dado(0).valor 
	@resultado2=@@juego.get_dado(1).valor 
	@resultado3=@@juego.get_dado(2).valor 
	@resultado4=@@juego.get_dado(3).valor 
	@resultado5=@@juego.get_dado(4).valor 
	
	# calcular resultado
	@@juego.sumar_resultados_dados
	@resultado_total=@@juego.total
	@@juego.incrementar_lanzamientos
	@@lanzamientos=@@juego.lanzamientos
	@mensaje=@@juego.mensaje_final
	erb :yatzee
	

end
####

post '/nvoJuego' do
	@@juego=Yatzee.new
	@resultado_total=@@juego.total
	@mensaje=@@juego.mensaje_final
	@@lanzamientos=0
	erb :yatzee
end
