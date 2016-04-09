=begin
This class creates TV shows
Attributes: name (string), genre (string), number of seasons so far(int), rating out of 5 (float), main characters(array)	

Methods:
-Create a new season
-Air the show
-Fridge the girlfriend to move the plot along (takes some woman or minority character)
=end

class TV_shows
	attr_reader :name, :genre
	attr_accessor :seasons, :rating
 	
 	initialize(name, genre, characters)
 		@name = name
 		@genre = genre
 		@seasons = 0
 		@rating = 2.5
 		@characters = characters
 	end

 	def new_season
 		@seasons += 1
 	end

 	def air_show
 		puts "And now, on HDTV, the next episode of #{@name}"
 	and

 	def fridge_gf(character)
 		@characters.delete(character)
 	end

end