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

end

#driver code
=begin
Sant = Santa.new

Sant.speak

Sant.eat_milk_and_cookies("thin mint")
=end

#initializations driver code
santas = []
santas << Santa.new("genderqueer", "jewish mixed-race")
santas << Santa.new("woman", "white")
santas << Santa.new("genderqueer demigirl femme", "white")
santas << Santa.new("questioning", "black")

p santas