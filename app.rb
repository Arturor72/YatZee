require 'sinatra'
require_relative "./lib/Dado.rb"
get '/' do
	@@dado=Dado.new
	@resultado=@@dado.valor
	erb :yatzee
end

post '/lanzarDado' do
	@resultado=@@dado.lanzar 
	erb :yatzee
end
