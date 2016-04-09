module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  		words.upcase!
  		"I'M SO HAPPY BECAUSE " + words + "!!!"
  	end
end