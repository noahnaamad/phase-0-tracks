#i'm going to make a gang of cat friends
#each cat is going to have a name, an age, a list of physical characteristics, and a list of favorite toys

cat_friends = {
	cat1: {
		name: "Spanky",
		age: 12,
		looks: ["medium size", "tuxedo fur", "funny mustache", "long whiskers"],
		toys: ["human faces", "headphone cords", "cardboard boxes", "grass"]
	},

	cat2: {
		name: "Treasa",
		age: 8,
		looks: ["medium size", "black fur", "long-haired", "medium whiskers"],
		toys: ["mice", "stuffed animals", "cardboard boxes", "string"]
	},

	cat3: {
		name: "Noah",
		age: 3,
		looks: ["small size", "calico fur", "extra fluffy", "medium whiskers"],
		toys: ["necklaces", "headphone cords", "cardboard boxes", "bugs in the house"]
	},

	cat4: {
		name: "Anna",
		age: 1,
		looks: ["long and slender", "tabby", "long whiskers", "extra soft hair"],
		toys: ["game console cords", "headphone cords", "cardboard boxes", "pens"]
	}

}

#MANIIPULATION 1: print out each cat's name and physical characteristics
cat_friends.each do |cat, characteristics|
	puts characteristics[:name] + "'s physical characteristics are:"
	p characteristics[:looks]
	puts ""
end

#MANIPULATION 2: make an array of toys the cats like
fave_toys = []
cat_friends.each do |cat, characteristics|
	fave_toys += characteristics[:toys]
end

#remove duplicates
fave_toys.uniq!

#sort into alphabetical order
fave_toys.sort!

puts "The toys this friend group likes are:"
p fave_toys
puts ""

#MANIPULATION 3: find the mean age
age = 0.0
counter = 0.0
cat_friends.each do |cat, characteristics|
	age += characteristics[:age]
	counter += 1
end

mean_age = age/counter

puts "The mean age of the cats is #{mean_age}"