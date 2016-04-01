#create empty hash
design_preferences = {}


#ask user for information, convert to correct type
puts "What is your name?"
name= gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "How many children do you have?"
child = gets.chomp
child = child.to_i
puts "What decor theme do you like best?"
decor = gets.chomp
puts "Do you want themed rooms? (yes or no)"
theme = gets.chomp
theme.downcase!
if theme == yes
	theme = true
else
	theme = false
end

#then store it in the "value" field in hash with relevant key i create
design_preferences[:name] = name





#print the hash
p design_preferences

#prompt user to tell me if they want to change a thing
#if they change it, convert the string into a symbol
#correct the symbol's value

#print latest version of hash