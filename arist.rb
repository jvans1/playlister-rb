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
		@@artists.length
	end		

	def self.reset_artists
		@@artists = []
		
	end

	def self.all
		@@artists 
	end

	def songs_count
		self.songs.length
	end

	def add_song(song)
		self.songs << song
		self.genres << song.genre
		song.artist = self
		add_artist_to_genre(song.genre)	
	end

	def add_artist_to_genre(genre)
		if genre
			genre.artists << self unless genre.artists.include?(self)
		end

		
	end


end
