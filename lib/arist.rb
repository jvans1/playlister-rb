require './song'
require './Genre'
class Artist
	attr_accessor :name, :songs, :genres
	@@artists = []

	def initialize
		@@artists << self
		@genres = []
		@songs = []
	end
	def genres=(genre)
		genre.artist << self
		
	end

	def self.count
		@@artist.length
	end		

	def self.reset_artists
		@@artist = []
		
	end

	def self.all
		@@artists 
	end

	def songs_count
		@songs.length
	end

	def add_song(song)
		@songs << song
		@genres << song.genre
		add_artist_to_genre(song.genre)	
	end

	def add_artist_to_genre(genre)
		if genre
			genre.artists << self unless genre.artists.include?(self)
		end

		
	end


end
