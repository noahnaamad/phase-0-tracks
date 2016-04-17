#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

#Virus Predictor

# I worked on this challenge [With: Joel].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# require is for gems, and require_relative is for specific file
#require_relative essentially copy/pastes everything from the other file into the top of the file, so the file you're on has access to all of the code in the relative file
require_relative 'state_data' 

class VirusPredictor

  
# setting the value of each attribute
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    pop_categories
  end

#runs the methods to predict deaths and the speed of disease spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# private means these methods are only available in the Class definition

 private
 
  def pop_categories
    @very_dense = @population_density >= 200
    @dense = @population_density >= 150
    @medium_dense = @population_density >= 100
    @low_dense = @population_density >= 50
  end
  
  def death(multiplier)
    (@population * multiplier ).floor
  end

# predicts deaths in a state given the population density and total population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @very_dense
      number_of_deaths = death(0.4)
      #number_of_deaths = (@population * 0.4).floor
    elsif @dense
      number_of_deaths = death(0.3)
      # number_of_deaths = (@population * 0.3).floor
    elsif @medium_dense
      number_of_deaths = death(0.2)
      #number_of_deaths = (@population * 0.2).floor
    elsif @low_dense
      number_of_deaths = death(0.1)
      #number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = death(0.05)
      #number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

 # preicts how fast the disease will spread in a state given its population density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @very_dense
      speed += 0.5
    elsif @dense
      speed += 1
    elsif @medium_dense
      speed += 1.5
    elsif @low_dense
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
#def initialize(state_of_origin, population_density, population)
STATE_DATA.each do |state, data|
  population_density = data[:population_density]
  population = data[:population]
  this_state = VirusPredictor.new(state, population_density, population)
  this_state.virus_effects
end


## DRIVER CODE
# # initialize VirusPredictor for each state
#
#
#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects
#

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One syntax uses symbols, the other doesn't use symbols (requiring the rocket symbol).

What does require_relative do? How is it different from require?
require_relative essentially copy/pastes the code in the required relative's file into the top of the file.  this means that the code in the file you're using has full access to the code in the "relative" file.
require is usually used with gems that are located elsewhere on your system, whereas require_relative is typically used with files in the same directory that you've created yourself.

What are some ways to iterate through a hash?
-Use .each on the hash
-Use indices of each pair in the hash

When refactoring virus_effects, what stood out to you about the variables, if anything?
That it took instance variables as arguments, which is silly because each instance knows what its instance variables are.

What concept did you most solidify in this challenge?
The importance of refactoring and creating elegant (not just usable) code.

=end