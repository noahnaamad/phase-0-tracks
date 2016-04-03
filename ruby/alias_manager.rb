def to_alias
	puts "What is your name?"
	name = gets.chomp
	#swap first and last name
	new_alias = name.split(' ')
	new_alias.reverse! #now i have reversed the first and last name and put the name in an array
	alias_string = new_alias.join('')
	new_alias = alias_string.split('') #turns new_alias into an array of letters
	puts new_alias

	capital = false
	#loop through the string
	new_alias.each do |letter|
	#if capital, save that it is capitalized and recapitalize it later
		if letter =! letter.downcase
			capital = true
		else
			capital = false
		letter.downcase!
		#if vowel, call method to determine next vowel
		end
	end

	#change that vowel to next vowel (exclude y) and concatenate to alias string
	#elsif consonant, call metho to determine next consonant
	#change consonant to next consonant
	#else keep it (in case it's a space or dash or whatever)
end

def next_vowel(letter)
	if letter == "u" #edge case
		code_let = "a"
	else
		alph = "aeiou"
		currlet = alph.index(letter) #this is the current letter in the string alph
		code_let = alph[currlet + 1] #find the next vowel
	end
	code_let
end

def next_consonant(letter)
	if letter == "z" #edge case
		code_let = "b"
	else
		alph = "bcdfghjklmnpqrstvwxyz"
		currlet = alph.index(letter) #this is the current letter in the string alph
		code_let = alph[currlet + 1] #find the next vowel
	end
	code_let
end