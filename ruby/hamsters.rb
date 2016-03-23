puts "Hamster's Name: "
name = gets.chomp
name.capitalize!

puts "Hamster's Volume: 1-10"
volume = gets.chomp
volume = volume.to_i

puts "Fur Color: "
color = gets.chomp
color.capitalize!

puts "Good Candidate for Adoption? Yes or No"
adoption = gets.chomp
if adoption == "Yes"
    adoption = true
else 
    adoption = false
end

age=nil

puts "Estimated Age: "
age = gets.chomp
if age != nil
    age = age.to_f 
end


puts "#{name} is #{age} years old. It is #{color}. It's volume ranking is #{volume}. Hence the assumption it is adoptible is #{adoption}"