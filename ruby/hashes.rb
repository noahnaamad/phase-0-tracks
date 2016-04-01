#create empty hash
design_preferences = {}


#ask user for information, convert to correct type
puts "What is your name?"
name= gets.chomp
name.capitalize!
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "How many children do you have?"
child = gets.chomp
child = child.to_i
if child >= 1
	puts "How many of those children are toddlers or younger?"
	toddler = gets.chomp
	toddler = toddler.to_i
end
puts "What decor theme do you like best?"
decor = gets.chomp
puts "Do you want themed rooms? (yes or no)"
theme = gets.chomp
theme.downcase!
if theme == "yes"
	theme = true
else
	theme = false
end

#then store it in the "value" field in hash with relevant key i create
design_preferences[:name] = name
design_preferences[:age] = age
design_preferences[:children_number] = child
design_preferences[:young_children] = toddler
design_preferences[:decor_theme] = decor
design_preferences[:themed_rooms] = theme


#print the hash
p design_preferences

#prompt user to tell me if they want to change a thing
puts "Would you like to revise this data?"

#if they change it, convert the string into a symbol
#correct the symbol's value

#print latest version of hash