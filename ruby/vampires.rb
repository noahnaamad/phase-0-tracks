def interview()
	print "How many people are you interviewing today?"
	num = gets.chomp
	num = num.to_i

	for i in (1..num)

		print "What is your name?"
		name = gets.chomp
		name.downcase!
		print "How old are you?"
		age1 = gets.chomp
		age1 = age1.to_i
		print "What year were you born?"
		year = gets.chomp
		year = year.to_i
		age2 = 2016 - year
		age3 = 2015 - year
		print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic = gets.chomp
		garlic.downcase!
		print "Would you like to enroll in the company’s health insurance? (y/n)"
		insurance = gets.chomp
		insurance.downcase!

=begin
I reversed the orders of if/elsifs as a design decision, because it made no sense to me that, for example, a someone could come in with the name "drake cula" and not be detected as a vampire if they lied well enough.  I ordered the if statements so that obvious vampire signifiers would be tested before less obvious ones.
=end 

		if ((name == "drake cula") || (name == "tu fang"))
		print "Definitely a vampire"
		elsif
			((age1 != age2)&&(age1 != age3))&&((garlic == "n") && (insurance == "n"))
			print "Almost certainly a vampire"
		elsif (((age1 != age2)&&(age1 != age3))&&((garlic == "n") ^ (insurance == "n")))
			print "Probably a vampire"
		elsif (((age1 == age2)||(age1 == age3))&&((garlic == "y")|| (insurance == "y")))
			print "Probably not a vampire"
		else
			print "Results Inconclusive"
		end

	end
end