print "What is your name?"
name = gets.chomp
name.capitalize!
print "How old are you?"
age1 = gets.chomp
age1 = age.to_i
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