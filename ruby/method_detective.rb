# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".replace "InVeStIgAtIoN"
# => "InVeStIgAtIoN"

"zom".sub('o', 'oo')
"zom".replace "zoom"
# => "zoom"

"enhance".center(15, " ")
"enhance".rjust(11, " ").ljust(15, " ")
"enhance".replace "    enhance    " 
#=> "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".replace "STOP! YOU’RE UNDER ARREST!"
# => "STOP! YOU’RE UNDER ARREST!"


"the usual".concat(" suspects") 
"the usual" + " suspects"
"the usual".replace "the usual suspects"
#=> "the usual suspects"

" suspects".insert(0, "the usual")
" suspects".prepend("the usual")
" suspects".replace "the usual suspects"
#=> "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".replace "The case of the disappearing last lette"
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chop.reverse
"The mystery of the missing first letter".replace "he mystery of the missing first letter"
"The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

"Elementary,    my   dear      Watson!".squeeze
"Elementary,    my   dear      Watson!".replace "Elementary, my dear Watson!"
# => "Elementary, my dear Watson!"
#might be able to cut into pieces when there's a space, then concatenate the pieces with a single space in between them
#can use split to turn into array wo spaces

"z".getbyte(0)
"z".ord
"z".codepoints.join(",").to_i
"z".each_byte {|c| print c} #this... sort of works
"z".each_codepoint {|c| print c} #this also sort of works
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter ‘a’ appear in this string?".count "a"
#=> 4