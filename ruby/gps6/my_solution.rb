# Virus Predictor

# I worked on this challenge with Laura Streb.
# We spent 1 hours on this challenge (additional 1 hour on my own).

# EXPLANATION OF require_relative
# Requiring an outside file relative to the current file - don't need file extension for fellow Ruby files
# Require calls a built-in module or can be used to require a file in any directory
#
require_relative 'state_data'

class VirusPredictor

# Class method defined inside VirusPredictor with self
  def self.print_report(data)
    data.each do |state_name, population_data|
      state = new(state_name, population_data)
      state.virus_effects
    end
  end

# Pre-populates an instance of the Class with data, in this case the state and population info, in instance variables that can be used throughout the class (one state at a time)
  def initialize(state_of_origin, population_data)
    @state = state_of_origin
    @population = population_data[:population]
    @population_density = population_data[:population_density]
  end

# Runs the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # Methods below this line cannot be called independently outside this class; limits the scope 

# Calculates the number of predicted deaths based on population density and returns nil, prints a report to the screen
  def predicted_deaths
    # predicted deaths is solely based on population density

    # each 50 population density increases the multiplier by 0.1
    # divide population density by fifty to find out how many 0.1s to multiply the population by

    if @population_density >= 50
      number_of_deaths = (((@population_density / 50) * 0.1) * @population).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates the speed that the virus will spread based on population density and returns nil, prints a report to the screen
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

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.print_report(STATE_DATA)

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
=begin 
Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?
 - The first hash syntax uses a string as the key and uses the hash rocket to point to the value. This is useful when you want the key to be "reader-friendly" or multiple words long.
 - The second syntax uses a symbol as a key instead, and can then use a colon to point to the value. This is useful when you just want the data storage without needing it to be "pretty."

What does require_relative do? How is it different from require?
 - require_relative requires an outside file relative to the current file - don't need file extension for fellow Ruby files.
 - Require calls a built-in module or can be used to require a file in any directory.

What are some ways to iterate through a hash?
- One way, as with the print_report method above, is to use .each and pass in the key and value as parameters.
- You can also use a 'for' loop; for each key-value pair, do x. 

When refactoring virus_effects, what stood out to you about the variables, if anything?
- What stood out to me was that the variables were repetitive. If they are instance variables, there has to be a way to make it less repetitive.

What concept did you most solidify in this challenge?
- Refactoring by using mathematical concepts -- first time really doing this.
- Also, passing info between methods so as to not repeat parameters/variables.

=end