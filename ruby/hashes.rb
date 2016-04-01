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
puts "What data would you like to revise?"
revise_key = gets.chomp

#if they change it, convert the value to correct class and update hash
if revise_key == "none"
	p design_preferences
else
	puts "What would you like to change that to?"
	revise_value = gets.chomp
	if revise_key == "name"
		revise_value.capitalize!
	elsif (revise_key == "child") || (revise_key == "toddler") || (revise_key == "age")
		revise_value = revise_value.to_i
	elsif revise_key == theme
		revise_value.downcase!
		if revise_value == "yes"
			revise_value = true
		else
			revise_value = false
		end	
	end
	revise_key = revise_key.to_sym
	#correct the hash
	design_preferences.delete(revise_key)
	design_preferences[revise_key] = revise_value
	p design_preferences
end






