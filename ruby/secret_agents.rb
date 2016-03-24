#encrypt
# find length of input string
# for every character in string, increment by 1
# concatenate incremented variable to coded_string
# output coded_string

def encrypt(input)
 input.downcase!
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   letter = input[i]
   if letter == "z" #edge case
   	coded_string += "a"
   else
   coded_string += letter.next
   end
 end
 coded_string
end


#decrypt
# assign variable to "A-Z"
# find length of input string
# for every character in string
#   find position in alphabet
#   add a letter to the new string with -1 relative index
#

def decrypt(input)
 input.downcase!
 alph = "abcdefghijklmnopqrstuvwxyz"
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   letter = input[i]
   if letter == "!"
   	#encrypt changes spaces to exclamation points so decrypt needs to change it back
   	coded_string += " "
   else
   currlet = alph.index(letter)
   #currlet is the index in alph of the letter we're looking at
   #currlet-1 should give us the index of the letter before it
   coded_string += alph[currlet - 1]
   end
 end
 coded_string
end

=begin
decrypt(encrypt("The duck flies at midnight"))
We're calling two methods on a string, and those methods are essentially opposites.  Encrypt changes the text in a certain way, and decrypt changes it in the opposite way, resulting in output that is the same or very similar to the input.  The only change is that every uppercase letter is changed to lowercase.
=end

#ask the agent if they want to encrypt/decrypt and save what they said
#ask agent for password
#use the function that they want on their password

puts "Would you like to encrypt or decrypt a password? (encrypt/decrypt)"
todo = gets.chomp
todo.downcase!

puts "What is the password? Remember uppercase letters will be turned lowercase."
password = gets.chomp

if todo == "encrypt"
	encrypt(password)
elsif todo == "decrypt"
	decrypt(password)
else
	puts "Learn to type, soldier!"
end