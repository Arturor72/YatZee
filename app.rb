require 'sinatra'

get '/' do
	erb :yatzee
end

post '/lanzarDado' do
	@resultado="1"
	erb :yatzee
end
