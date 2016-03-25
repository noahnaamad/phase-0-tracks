def interview
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
		print "Please enter all allergies. When you are finished, type 'done'"
		allergy = gets.chomp
		allergy.downcase!
		isallergic = nil
		while ((allergy != done) && (allergy != "sunshine")
			if allergy == "sunshine"
				puts "#{name} is probably a vampire!!!"
				isallergic = true
			end
			print "Please enter all allergies. When you are finished, type "done""
			allergy = gets.chomp
			allergy.downcase!
		end
		next if (isallergic == true)
=begin
I reversed the orders of if/elsifs as a design decision, because it made no sense to me that, for example, a someone could come in with the name "drake cula" and not be detected as a vampire if they lied well enough.  I ordered the if statements so that obvious vampire signifiers would be tested before less obvious ones.
=end 

		if ((name == "drake cula") || (name == "tu fang"))
			puts "#{name} is definitely a vampire"
		elsif ((age1 != age2)&&(age1 != age3))&&((garlic == "n") && (insurance == "n"))
			puts "#{name} is almost certainly a vampire"
		elsif (((age1 != age2)&&(age1 != age3))&&((garlic == "n") ^ (insurance == "n")))
			puts "#{name} is probably a vampire"
		elsif (((age1 == age2)||(age1 == age3))&&((garlic == "y")|| (insurance == "y")))
			puts "#{name} is probably not a vampire"
		else
			puts "Results Inconclusive"
		end

	end
end