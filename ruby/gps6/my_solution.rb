#Virus Predictor

# I worked on this challenge [With: Joel].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require is for gems, and require_relative is for specific file
#require_relative essentially copy/pastes everything from the other file into the top of the file, so the file you're on has access to all of the code in the relative file
#require_relative 'state_data' 

class VirusPredictor

  
# setting the value of each attribute
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
#runs the methods to predict deaths and the speed of disease spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# private means these methods are only available in the Class definition
  private

# predicts deaths in a state given the population density and total population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

 # preicts how fast the disease will spread in a state given its population density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
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

