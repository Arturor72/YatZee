require 'sinatra'
require_relative "./lib/Dado.rb"
get '/' do
	@@dado=Dado.new
	@resultado=@@dado.valor
	@resultado2=@@dado.valor
	erb :yatzee
end

post '/lanzarDado' do
	@resultado=@@dado.lanzar 
	@resultado2=@@dado.lanzar 
	erb :yatzee
end
