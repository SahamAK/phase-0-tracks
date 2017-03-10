def answer_boolean(answer_string)
  case answer_string
when "yes", "Yes", "y", "Y"
  answer_string = true

when "no", "No", "n","N"
  answer_string = false

 #else
 	#abort("Please use a valid input.")
  
end
end


#This method calculate age based on age and year
def age_right (emp_age, emp_year,max_age)
  #get current year
  time = Time.new
  current_year = time.year
  puts "current_year #{current_year}"
  year_diff = current_year - emp_year
  puts "year_diff #{year_diff}"


  if (year_diff >= emp_age) && (year_diff <= max_age)
    age_right = true
  else
    age_right = false
  end
  puts age_right
  return age_right
end

#This method decide on employee status
def emp_def ( age_boolean, garlic_bread_boolean, health_insurance_boolean, emp_name)

# if age is right and is willing to eat garlic or signup for insurance
#  then "Probably not a vampire"
  case emp_name
    when "Drake Cula", "Tu Fang"
      emp_status = "Definitely a vampire"
      puts "emp_status status is : #{emp_status}"
    else
      
      if  (age_boolean ==true)  && (( garlic_bread_boolean || health_insurance_boolean) ==true)
        emp_status = "Probably not vampire"
        puts "age_boolean: #{age_boolean}, garlic_bread_boolean : #{garlic_bread_boolean}, health_insurance_boolean: #{health_insurance_boolean}"
        puts "employee status is : #{emp_status}"
      elsif (age_boolean ==false)  && (( garlic_bread_boolean || health_insurance_boolean) ==true)
        emp_status = "Probably a vampire"
        puts "employee status is : #{emp_status}"
      elsif (age_boolean ==false)  && ( garlic_bread_boolean == false) && (health_insurance_boolean == false)
        emp_status = "Almost certianly a vampire"
        puts "employee status is: #{emp_status}"
=begin
      elsif (["Drake Cula", "Tu Fang"].include?(emp_name) == true)
        emp_status = "Definitely a vampire"
        puts "emp_status status is : #{emp_status}"
=end
      else
        emp_status = "Results inconclusive"
        puts "emp_status is #{emp_status}"
      end
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
max_age = 30
famous_vampires = ["Highgate", "Gorglin Grange", "Vampire of New England", "Fritz Haarmann", "Clara Geisslerin", "Peter Plogojowitz", "Elizabeth Bathory", "Vlad III"]
puts "Welcome to Werewolf Inc., quittin' time is always before sundown"
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

age_year = age_right(age,year,max_age)
puts " after age_year: #{age_year}"

=begin
  Vampires hate garlic. 
  
=end 
answer_string = ["yes" "Y" "no" "N"]
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/yes/Y/y/No/no/N/n)"
garlic_bread = gets.chomp

puts "before method #{garlic_bread}"
garlic_bread = answer_boolean(garlic_bread)

puts "after method #{garlic_bread}"

=begin
  Vampires are immortal.
  
=end
puts "Would you like to enroll in the company's health insurance? (Yes/yes/Y/y/No/no/N/n)"
health_insurance = gets.chomp

puts "before method #{health_insurance}"
health_insurance = answer_boolean(health_insurance)

puts "after method #{health_insurance}"

#call method to figure out employee's status
employee = emp_def(age_year,garlic_bread,health_insurance,name)
puts "THIS IS THE END OF THE MAIN PROGRAM!"