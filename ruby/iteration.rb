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

puts "now let's delete items if they meet a certain condition"
#iterate through the array, deleting any that meet certain condition
puts "the array after deleting even numbers:"
fibbs.delete_if{|num| num%2 == 0}
p fibbs

#iterate through the hash, deleting any that meet certain condition
puts "the hash after deleting expensive clothing:"
prices.delete_if{|name, price| price > 45}
p prices

#iterate through the object, keeping any that meet certain condition
puts "now let's keep items if they meet certain condtions (same original array and hash)"
fibbs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
prices = {shirt: 10, pants: 30, shoes: 40, socks: 5, jacket: 50}

#the array
puts "the array after keeping only even numbers:"
fibbs.keep_if{|num| num%2 == 0}
p fibbs

#the hash
puts "the hash after keeping only expensive clothing:"
prices.keep_if{|name, price| price > 45}
p prices

#iterate through the object, keeping any that meet certain condition: new method!
puts "now let's keep items if they meet certain condtions using a DIFFERENT method (same original array and hash)"
fibbs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
prices = {shirt: 10, pants: 30, shoes: 40, socks: 5, jacket: 50}

#the array
puts "the array after keeping only numbers greater than or equal to 7:"
fibbs.select!{|num| num >= 7}
p fibbs

#the hash
puts "the hash after keeping only super cheap clothing:"
prices.select!{|name, price| price <= 10}
p prices

#remove items from structure until a certain condition is met
puts "now let's remove items until a certain condition is met, after which all items are kept"
fibbs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
prices = {shirt: 10, pants: 30, shoes: 40, socks: 5, jacket: 50}

#the array
puts "the array after deleting numbers before 13:"
fibbs = fibbs.drop_while{|num| num < 13}
p fibbs

#the hash: sadly i couldn't find anything for this!
#puts "the hash after deleting items before shoes:"
#prices = prices.drop_while{|name, price| price == 40}
#p prices

