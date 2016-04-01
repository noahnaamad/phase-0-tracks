def new_method
  puts "Is it a beautiful day?"
  yield("Brittany", "Noah")
  puts "There you go!"
end

new_method { |name1, name2| puts "#{name1} and #{name2} say it's a beautiful day." }

new_array = ["cupcake", "donut", "cake", "cookie", "brownie"]

puts ""
puts ""


city_ratings = {california: "awesome", north_carolina: "jerks", massachusetts: "medium", hawaii: "awesome" }

puts "going through each"
new_array.each do |snack|
  puts "i want a " + "#{snack}" + " now!!"
end

puts "mapping now"
new_array.map! do |snack|
  "i want a " + "#{snack}" + " now!!"
end

puts "result of mapping"

p new_array