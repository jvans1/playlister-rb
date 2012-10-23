require "./artist"
require "./song"
require "./Genre"

def assign_artist(artist_name)
	unless Artist.all.length > 0
		Artist.new.tap{|artist| artist.name = artist_name} 
	else
		Artist.all.each do |artist| 
			if artist.name == artist_name
				return artist
			else
				next
			end
		end
		Artist.new.tap{|artist| artist.name = artist_name}
	end
end
def assign_genre(genre_name)
	unless Genre.all.length > 0
		Genre.new.tap{|genre| genre.name = genre_name} 
	else
		Genre.all.each do |genre| 
			if genre.name == genre_name
				return genre
			else
				next
			end
		end
		Genre.new.tap{|genre| genre.name = genre_name
		}
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
