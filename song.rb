class Song
	attr_accessor :genre, :name
	
	def genre=(genre)
		@genre = genre
		@genre.songs << self	
	end

end
