# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# This gives the relative location of the state data file that is imported into this program
#
require_relative 'state_data'

class VirusPredictor
#INITIALIZE
# - Initializes the class variables using the data imported from state_data.rb
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @hash = {200 => [0.4, 0.5], 150 => [0.3, 1], 100 => [0.2, 1.5], 50 => [0.1, 2], 0 => [0.5, 2.5]}
    @factor = 0.0
    @speed=0.0
  end


# VIRUS EFFECTS
# - This is an instance method that executes two other methods.

#compare key to population density
  def virus_effects
    #@hash.each {|key,value| puts "#{key} is #{value[0]}"}
    @hash.each do |key, value|
      # p "#{key}"
      # p "#{value}"
      # p "#{@population_density}"
      if (@population_density >= key)
        @factor = value[0]
        @speed = value[1]
        # p "factor is : #{@factor}"
        # p "speed is:: #{@speed}"
        break
      end
    end

    predicted_deaths(@factor)
    speed_of_spread(@speed)
  end

  private
#PREDICTED DEATHS
#Conditional that selects a set variable based on the population density. Outputs calculations
#in a statement rounding down with .floor method.
  def predicted_deaths(factor)
    # predicted deaths is solely based on population density
    #p "inside the prdicted death"
    number_of_deaths = (@population * factor).floor
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
#SPEED OF SPREAD
#Conditional statement that chooses a set variable based on the population density.
  def speed_of_spread(speed)
   #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0


    # if @population_density >= 200
    #   speed = 0.5
    # elsif @population_density >= 150
    #   speed = 1
    # elsif @population_density >= 100
    #   speed = 1.5
    # elsif @population_density >= 50
    #   speed = 2
    # else
    #   speed = 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, value|
temp_state = state.downcase
temp_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
temp_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
#Pseudo-code
#Use a .each or .each_key loop for the initialize process that iterates through all 50 states.

#=======================================================================
# Reflection Section

# Release 1.) Require vs require_relative:
#   Require Relative references a specified file within the current working directory. Require uses an exact
# filepath for when the file being referenced is outside the working directory.
# Require relative imports the data from a file in the same directory with the same name, we don't include the
# .rb ruby extension, we just use the general name of the file.
#
# Release 5.) We removed the arguments from all of the methods aside from the initilize method because
#  instance variables are always accessible within the class instance.

# Release 6.) Moving the private method above virus_effects gave a NoMethod error for VirusPredictor object.
# The private method prevents everything below it from being called outside of the class.

#Release 7.) We commented out speed = 0.0, because the speed_of_spread method was adding floats
# to 0.0 instead of just stating a new value for the float.
#---------


