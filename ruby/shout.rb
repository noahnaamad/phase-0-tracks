module Shout
	def scared_of(words)
		puts "omg look out for the " + words + "!!"
	end

	def excited_about(words)
		puts "woah that " + words + " is so awesome!"
	end

	#original code
=begin
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  		words.upcase!
  		"I'M SO HAPPY BECAUSE " + words + "!!!"
  	end
=end
end

class Parent
	include Shout
end

class Cartoon_character
	include Shout
end

#driver code #2
bugs_bunny = Cartoon_character.new
bugs_bunny.scared_of("falling anvil")
bugs_bunny.excited_about("fact that you wear the same outfit every day")

mommy = Parent.new
mommy.scared_of("that bus")
mommy.excited_about("picture you drew")

#initial driver code
=begin
p Shout.yell_angrily("the patriarchy sucks")
p Shout.yelling_happily("my partner is the best ever")
=end