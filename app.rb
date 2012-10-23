require 'rubygems'
require 'sinatra'
require './parse_data'
get '/' do
	erb :index
end

get '/artists' do
	parse_text
	@artists = Arists.all 
	erb :artists
end

get '/genres' do
	erb :genres
end



