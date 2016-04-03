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

def to_alias(name)
	#swap first and last name
	new_alias = name.split(' ')
	new_alias = new_alias.insert(1, " ") #so the space doesn't get lost
	new_alias.reverse! #now i have reversed the first and last name and put the name in an array
	alias_string = new_alias.join('')
	new_alias = alias_string.split('') #turns new_alias into an array of letters

	final_alias = ""
	capital = false
	#loop through the string
	new_alias.each do |letter|
		#if vowel, call method to determine next vowel
		if ("aeiou".include? letter)
		#change that vowel to next vowel (exclude y) and concatenate to alias string
			encrypt_letter = next_vowel(letter)
			final_alias += encrypt_letter
		#elsif consonant, call metho to determine next consonant
		elsif ("bcdfghjklmnpqrstvwxyz".include? letter)
		#change consonant to next consonant
			encrypt_letter = next_consonant(letter)
			final_alias += encrypt_letter
		#else keep it (in case it's a space or dash or whatever)
		else
			final_alias += letter
		end
	end
	final_alias
end

input = ""
store_names = {}
until input == "quit"
	puts "Please enter a name or type quit to exit"
	input = gets.chomp
	if input != "quit"
		store_names[input] = to_alias(input)
		to_alias(input)
	end
end

p store_names

