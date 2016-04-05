# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: initialize new hash called "groceries" w default value 1
# alter grocery input into array
# output the hash to the user

# Method to add an item to a list
# input: the list, item name, optional quantity
# steps: set hash item as key and quanity as value, append to hash
# output: new hash

# Method to remove an item from the list
# input: the list, item name
# steps: delete method on hash calling item name
# output: new hash

# Method to update the quantity of an item
# input: the list, item name, quantity
# steps: update hash value for that key
# output: new hash

# Method to print a list and make it look pretty
# input: the newest hash
# print out "grocery list"
# steps: .each method,
# output: print "you have value amount of key"

def create_list(items)
  groceries = {}
  array_items = items.split(" ")
  array_items.each do |item|
    groceries[item] = 1
    end
  p groceries
end 

#groceries_global = create_list("carrots apples cereal pizza")

def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  p grocery_list
end

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  p grocery_list
end 

def update_qty(grocery_list, item, quantity)
  grocery_list[item] = quantity
  p grocery_list
end 

def pretty(grocery_list)
  puts "Grocery List"
  grocery_list.each do |item, qty| 
    puts "You have #{qty} amount of #{item}." 
    end
end 

groceries_2 = create_list("spinach broccoli kale cucumber")
add_item(groceries_2, "lemonade", 2)
add_item(groceries_2, "tomatoes", 3)
add_item(groceries_2, "onions", 1)
add_item(groceries_2, "ice cream", 4)
remove_item(groceries_2, "lemonade")
update_qty(groceries_2, "ice cream", 1)
pretty(groceries_2)
# Would be nice to add UI for looping through adding/removing/etc 


=begin
What did you learn about pseudocode from working on this challenge?
 I learned to more thoroughly separate the programming language  from the algorithm.  I was using partial-code in my pseudocode, and I learned that that's bad practice.

 What are the tradeoffs of using arrays and hashes for this challenge?
 Arrays and hashes were useful for different aspects of this challenge.  Arrays were useful for manipulating strings, while a hash was useful for storing paired information.

 What does a method return?
 The method implicitly returns the last line of code in the method.

What kind of things can you pass into methods as arguments?
Anything pre-existing that the method can see, such as global variables, and anything you enter into the parameter field (like an integer of your choice.)

How can you pass information between methods?
You can use global variables to store information where both methods can see it.  You can also call a method from inside another method.  The second method called can see what's inside the first method.

What concepts were solidified in this challenge, and what concepts are still confusing?
This challenge solidified my understanding of the importance of making methods (and code i general) generalizable.
I'm still confused about the difference between "p" and "puts", but that's something I can research on my own time.
  
=end