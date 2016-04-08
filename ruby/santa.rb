class Santa

	def initialize (gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance...."
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at (reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end

end

#driver code
=begin
Sant = Santa.new

Sant.speak

Sant.eat_milk_and_cookies("thin mint")
=end

=begin
#initializations driver code
santas = []
santas << Santa.new("genderqueer", "jewish mixed-race")
santas << Santa.new("woman", "white")
santas << Santa.new("genderqueer demigirl femme", "white")
santas << Santa.new("questioning", "black")

p santas
=end

#birthday and get mad at driver code
nick = Santa.new("gq", "native american")
p nick
nick.celebrate_birthday
p nick
nick.get_mad_at("Dasher")
p nick
puts nick.gender
puts nick.ethnicity