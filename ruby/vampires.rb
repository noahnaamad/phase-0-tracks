def interview
	print "How many people are you interviewing today?"
	num = gets.chomp
	num = num.to_i
	if num < 1
		puts "cool story bro"
	else

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
I reversed the orders of if/elsifs as a design decision, because it made no sense to me that, for example, a someone could come in with the name "drake cula" and not be detected as a vampire if they lied well enough.  I ordered the if statements so that obvious vampire signifiers would be tested before less obvious ones.  This is also why i split up the if/else statements, to test whether the vampire has a sunshine allergy only if they passed the more obvious tests.  Because what's the point of asking someone about their allergies if we already know they're a vampire?
=end 
			detectvamp = false #lets us know if we detected a vampire so we can move on
			if ((name == "drake cula") || (name == "tu fang"))
				puts "#{name} is definitely a vampire"
				detectvamp = true
				puts ""
			elsif ((age1 != age2)&&(age1 != age3))&&((garlic == "n") && (insurance == "n"))
				puts "#{name} is almost certainly a vampire"
				detectvamp = true
				puts ""
			end

			next if (detectvamp)

			allergy = "wedontknow"
			until ((allergy == "done") || (allergy == "sunshine")) do
				puts "Please enter all allergies. When you are finished, type 'done'"
				allergy = gets.chomp
				allergy.downcase!
				if (allergy == "sunshine")
					puts "#{name} is probably a vampire"
					puts ""
					detectvamp = true
					next #why bother with asking about other allergies if we already have our answer
				end
			
			end

			next if (detectvamp)

			if (((age1 != age2)&&(age1 != age3))&&((garlic == "n") ^ (insurance == "n")))
				puts "#{name} is probably a vampire"
				puts ""
			elsif (((age1 == age2)||(age1 == age3))&&((garlic == "y")|| (insurance == "y")))
				puts "#{name} is probably not a vampire"
				puts ""
			else
				puts "Results Inconclusive"
				puts ""
			end
		end
	end
	prints, "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end