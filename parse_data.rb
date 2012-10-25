require "./artist"
require "./song"
require "./Genre"

def assign_artist(artist_name)
	if 	artist = Artist.all.detect{|artist| artist.name == artist_name} 
		artist
	else
		Artist.new.tap{|artist| artist.name = artist_name}
	end
end
def assign_genre(genre_name)
	if genre = Genre.all.detect{|genre| genre.name == genre_name} 
		genre
	else
		Genre.new.tap{|genre| genre.name = genre_name}
	end
end

def parse_text
	file = Dir.open("./data")
	file.each do |file|
		artist_name, song_and_genre_name = file.split(" - ")
		song_title, genre_name = song_and_genre_name.to_s.split("[")
		genre_name = genre_name.to_s.split(']')[0]

		artist = assign_artist(artist_name.to_s)
		song = Song.new
		song.name = song_title.to_s
		genre = assign_genre(genre_name.to_s)
		song.genre = genre	
		artist.add_song(song)
	end
end
parse_text

puts Artist.count
puts Genre.all.count