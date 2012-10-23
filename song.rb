require './Genre'

##DO I WANT GENRE TO RETURN OBJECT OR STRING OF GENRE NAMNE?


class Song
	attr_accessor :genre, :name, :artist

	def genre=(genre_name)
		@genre = genre_name
		@genre.songs << self	
	end

end
