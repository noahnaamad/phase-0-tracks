module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  		words.upcase!
  		"I'M SO HAPPY BECAUSE " + words + "!!!"
  	end
end

#driver code
p Shout.yell_angrily("the patriarchy sucks")
p Shout.yelling_happily("my partner is the best ever")