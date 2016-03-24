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


if (((age1 == age2)||(age1 == age3))&&((garlic == "y")|| (insurance == "y")))
		print "Probably not a vampire"

elsif (((age1 != age2)&&(age1 != age3))&&((garlic == "n")|| (insurance == "n")))&&(insurance != garlic)
		print "Probably a vampire"
elsif
		((age1 != age2)&&(age1 != age3))&&((garlic == "n") && (insurance == "n"))
		print "Almost certainly a vampire"
elsif ((name == "drake cula") || (name == "tu fang"))
		print "Definitely a vampire"
else
		print "Results Inconclusive"
end
