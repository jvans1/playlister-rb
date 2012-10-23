require 'rubygems'
require 'sinatra'
require './parse_data'
require './artist'

get '/' do
	erb :index
end

get '/artists' do
	parse_text
	@artist_count = Artist.count
	@artists = Artist.all
	@artists.sort! {|a,b| a.name.downcase <=> b.name.downcase}
	erb :artists
end

get '/genres' do
	erb :genres
end



