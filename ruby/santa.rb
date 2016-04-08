class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :reindeer_ranking, :age


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

=begin
don't need this now that i have attr_reader
	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end

=end

end

example_gender = ["genderqueer", "demigirl", "femme", "butch", "man", "woman", "trans man", "trans woman", "genderfluid", "two spirit", "agender", "questioning"]

example_ethnicity = ["white", "Black", "Latin@", "Arab", "Jewish", "Asian", "Native American", "Aboriginal Australian", "Pacific Islander", "mixed race", "other"]

#driver code test multiple santas
for i in (1..500)
	this_ones_gender = example_gender.sample
	if this_ones_gender == "two spirit"
		this_ones_ethniticy = "Native American"
		#two spirit is a gender unique to some Native American tribes, therefore if the santa is two spirit they must be Native. otherwise that santa is appropriating Native culture, and we can't have that!
	else
		this_ones_ethniticy = example_ethnicity.sample
	end
	this_santa = Santa.new(this_ones_gender, this_ones_ethniticy)
	this_santa.age = rand(140)
	puts "This santa's gender is " + this_santa.gender + ", their ethnicity is " + this_santa.ethnicity + ", and their age is " + this_santa.age.to_s + "."
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

=begin
#birthday and get mad at driver code, also getter/setter driver code
nick = Santa.new("gq", "native american")
p nick
nick.celebrate_birthday
p nick
nick.get_mad_at("Dasher")
p nick
puts nick.gender
puts nick.ethnicity
=end

