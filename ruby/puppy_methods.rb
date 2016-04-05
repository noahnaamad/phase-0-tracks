
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
    number.times do
      puts "Woof!"
    end
  end
  
  def roll_over
    puts "*Rolls over*"
  end

  def dog_years(hyears)
    dyear = 7 * hyears
  end
  
  def chase_tail(times)
    puts "*runs in circles #{times} times*"
  end
 
  def initialize
    puts "Initializing new puppy instance..."
  end
  
end


#driver code
pup = Puppy.new
pup.fetch("mouse toy")
pup.speak(5)
pup.roll_over
puts pup.dog_years(5)
pup.chase_tail(55)


class Kitties
  
  def speak(number)
    number.times do
      puts "Mew!"
    end
  end
    
  def snuggle
    puts "*snuggles you*"
  end
  
  def initialize
    puts "Inits a new kitty instance...."
  end
  
end


kitty_array = []

50.times do
  kitty_array << Kitties.new
end

kitty_array.each do |k|
  k.snuggle
  k.speak(1)
end

#puts kitty_array
