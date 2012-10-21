class Artist
	attr_accessor :name, :songs, :genres
	@@artists = []

	def initialize
		@genres = []
	end

	def self.count
		@@artist.length
	end		

	def reset_artists
		@@artist = []
		
	end

	def all
		@@artists || []
	end

	def songs_count
		@songs.length
	end

	def add_song(song)
		@songs << Song.new
		@genres << song.genre 
	end

	def genres

	end

end
