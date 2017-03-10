def answer_boolean(answer_string)
  case answer_string
when "yes", "Yes", "y", "Y"
  answer_string = true

when "no", "No", "n","N"
  answer_string = false

 else
 	abort("Please use a valid input.")
  
end
end

=begin
#-----------------------------------------------------------------------------#
#main program
Release1: Interview with the Vampire
Collect information about the new employee
Name, age, year, do they like garlic, do they need heath insurance
Save Data.
#
=end
# List of famous Vampires
famous_vampires = ["Highgate", "Gorglin Grange", "Vampire of New England", "Fritz Haarmann", "Clara Geisslerin", "Peter Plogojowitz", "Elizabeth Bathory", "Vlad III"]
Puts "Welcome to Werewolf Inc., quittin' time is always before sundown"
puts " What is your name? "
name = gets.chomp

# Age
puts "How old are you? "
age = gets.chomp.to_i

=begin
if n age and a year of birth don't line up mathmetically, that employee is a vampire.
=end
puts " What year were you born? "
year = gets.chomp.to_i

# get current year
time = Time.new
current_year = time.year
puts current_year
=begin
  Vampires hate garlic. 
  
=end 
answer_string = ["yes" "Y" "no" "N"]
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/Y/no/N)"
garlic_bread = gets.chomp

puts "before method #{garlic_bread}"
garlic_bread = answer_boolean(garlic_bread)

puts "after method #{garlic_bread}"

=begin
  Vampires are immortal.
  
=end
puts "Would you like to enroll in the company's health insurance? "
health_insurance = gets.chomp

puts "before method #{health_insurance}"
health_insurance = answer_boolean(health_insurance)

puts "after method #{health_insurance}"