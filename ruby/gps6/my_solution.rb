# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

require_relative 'state_data'
# "require_relative" tells the program where to look for the data.

class VirusPredictor
  
# Initializes each instance with defaults attribute values. 
  def initialize(state_of_origin, population_density, population)  
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Passes the instance variables into the predicted_deaths and speed_of_spread methods.
  def virus_effects(state, population_density, population)
    @state = state
    @population_density = population_density
    @population = population
    predicted_deaths
    speed_of_spread
  end

  private

# Calculates the number of predicted deaths based on the population density and the population of that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    
#  Original Code  
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#  New Refactored Code
    factor = 0.05 
    factor = 0.1 if @population_density >= 50
    factor = 0.2 if @population_density >= 100
    factor = 0.3 if @population_density >= 150
    factor = 0.4 if @population_density >= 200

    number_of_deaths = (@population * factor).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates the rate of virus spread based on the population density of that state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
 
#  Original Code
    # speed = 0.0
    # 
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    
#  New Refactored Code
    speed = 2.5 
    speed = 2 if @population_density >= 50
    speed = 1.5 if @population_density >= 100
    speed = 1 if @population_density >= 150
    speed = 0.5 if @population_density >= 200
    
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

any_state = VirusPredictor.new("",0,0)

STATE_DATA.each do |state, pop_data|
  any_state.virus_effects(state, pop_data[:population_density], pop_data[:population])
   
  #  VirusPredictor.new(state, pop_data[:population_density], pop_data[:population]).virus_effects
end

# OLD DRIVER CODE
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section