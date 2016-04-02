def new_method
  puts "Is it a beautiful day?"
  yield("Brittany", "Noah")
  puts "There you go!"
end

new_method { |name1, name2| puts "#{name1} and #{name2} say it's a beautiful day." }

puts ""
puts ""

snacks = ["cupcake", "donut", "cake", "cookie", "brownie"]
city_ratings = {california: "awesome", north_carolina: "awful", massachusetts: "medium", hawaii: "awesome" } #north carolina state government just passed an extremely anti-trans bill.  nothing against the average NC resident, just the government that represents them.


#iterate through the array multiple ways
puts "original array"
p snacks

puts "going through each item in the array"
snacks.each do |snack|
  puts "i want a " + "#{snack}" + " now!!"
end

puts "mapping now"
snacks.map! do |snack|
  "i want a " + "#{snack}" + " now!!"
end

puts "result of mapping"

p snacks

#iterate through the hash
puts "the original hash"
p city_ratings

puts "iterating through each item"
city_ratings.each do |city, rating|
	puts "the state of " + "#{city.to_s}" + " is positively " + "#{rating}" + "." 
end

#release 2: new array and hash
puts "the original array and hash:"
p fibbs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
p prices = {shirt: 10, pants: 30, shoes: 40, socks: 5, jacket: 50}

#iterate through the array, deleting any that meet certain condition
puts "the array after deleting even numbers:"
fibbs.delete_if{|num| num%2 == 0}
p fibbs

#iterate through the hash, deleting any that meet certain condition
puts "the hash after deleting expensive clothing"
prices.delete_if{|name, price| price > 45}
p prices