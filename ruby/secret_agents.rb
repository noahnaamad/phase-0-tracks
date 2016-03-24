#encrypt
# find length of input string
# for every character in string, increment by 1
# concatenate incremented variable to coded_string
# output coded_string

def encrypt(input)
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   input_index_i = input[i]
   coded_string += input_index_i.next
 end
 return coded_string
end


#decrypt
# assign variable to "A-Z"
# find length of input string
# for every character in string
#   find position in alphabet
#   replace with letter with -1 relative index
#

def decrypt(input)
 alph = "abcdefghijklmnopqrstuvwxyz"
 length = input.length
 coded_string = ""
 for i in 0..(length-1)
   letter = input[i]
   currlet = alph.index(letter)
   #currlet is the index in alph of the letter we're looking at
   #currlet-1 should give us the index of the letter before it
   coded_string += alph[currlet - 1]
 end
 coded_string
end