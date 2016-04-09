=begin
This class creates TV shows
Attributes: name (string), genre (string), number of seasons so far(int), rating out of 5 (float), main characters(array)	

Methods:
-Create a new season
-Air the show
-Fridge the girlfriend to move the plot along (takes some woman or minority character)
-change rating
=end

class TV_shows
	attr_reader :name, :genre
	attr_accessor :seasons, :rating
 	
 	def initialize(name, genre, seasons, rating, characters)
 		@name = name
 		@genre = genre
 		@seasons = seasons
 		@rating = rating
 		@characters = characters
 	end

 	def new_season
 		@seasons += 1
 	end

 	def air_show
 		puts "And now, on HDTV, the next episode of #{@name}"
 	end

 	def fridge_gf(character)
 		@characters.delete(character)
 	end

end

all_the_shows = []
puts "How many TV shows would you like to create?"
num_shows = gets.chomp
num_shows = num_shows.to_i

for i in (1..num_shows)
	puts "What is the name of the show?"
	name_thisshow = gets.chomp
	puts "What genre is this show?"
	genre_thisshow = gets.chomp
	puts "How many seasons does this show have so far?"
	seasons_thisshow = gets.chomp
	seasons_thisshow = seasons_thisshow.to_i
	puts "How would you rate this show so far on a scale of 1-5?  If you haven't seen it just enter 2.5"
	rating_thisshow = gets.chomp
	rating_thisshow = rating_thisshow.to_f
	characters_thisshow = []
	new_character = ""
	while new_character != "done"
		puts "Please enter the name of a main character.  When you have entered them all, write done"
		new_character = gets.chomp
		if new_character == "done"
			break
		end
		characters_thisshow << new_character
	end
	all_the_shows << TV_shows.new(name_thisshow, genre_thisshow, seasons_thisshow, rating_thisshow, characters_thisshow)


end