# Virus Predictor

# I worked on this challenge [by myself, with: Matthew Mayerle ].
# We spent 2 hours working together until we hit a mental block, then I spent another 3-4 hours trying to use the best built-in 
# method I could come up to refactor the 2 private methods. I got stuck using .select. So, I we used .each for our hash hash.

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
    @speed = 0.0
  end


# VIRUS EFFECTS
# - This is an instance method that executes two other methods.

#compare key to population density
  def virus_effects
    @hash.each do |key, value|
      
      if (@population_density >= key)
        @factor = value[0]
        @speed = value[1]
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
    number_of_deaths = (@population * factor).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
#SPEED OF SPREAD
#Conditional statement that chooses a set variable based on the population density.
  def speed_of_spread(speed)
   #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
#STATE_DATA.each do |state, value|
STATE_DATA.each_key do |state|
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

#Release 7.) We re-wrote the 2 private methods, predicted_deaths and speed_of_spread. we also pass arguments to 
#them. We also added 3 new variables to to initialize method. We used a hash to include the constant values for our calculations.
#This hash has a nested array. The key is the populaion density set values and the array has the factor and the speed.
#NOTE: WE USED .EACH. I COULD NOT FIGURE OUT HOW TO USE SELECT AND RETURN ONLY ONE VALUE.
#
#Release 8.) Reflect
#What are the differences between two different hash syntaxes shown in the state_data file?
# => The first hash uses =>(hash rocket) its implicit form where as the second one uses keys as symbol.
#What does require_relative do? How is it different from requir?
#require_relative assumes that the file you are calling is in the same directory as teh calling program. In our case state_data.rb is
#in the same directory , gps6, as mysolution.rb. On the other hand, require is used to provide the full path. require_relative is used
#for local files.
#What are some ways to iterate through a hash?
#using .each, .each_key, .each_value, .each_pair
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#We initialized the variables factor and speed in the main initialize method. Without @ in front of these variables, they 
#are local and we were not able to use them in the private methods.
#What concept did you most solidify in this challenge?
#Using DRY.Don't Repeat Yourself,using hash and built-in methods. I am still not sure how to use .select for this project. I know .each
#loops through every value but select should just go to source. I will have to ask the guide or instructor.
#---------


