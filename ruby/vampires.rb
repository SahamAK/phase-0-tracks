# This method convert string to boolean
def answer_boolean(answer_string)
  case answer_string
    when "yes", "Yes", "y", "Y"
      answer_string = true

    when "no", "No", "n","N"
      answer_string = false

  end
end

#This method calculate right age based on input age and year
def age_right (emp_age, emp_year,max_age)
  #get current year
  time = Time.new
  current_year = time.year
  year_diff = current_year - emp_year

  if (year_diff >= emp_age) && (year_diff <= max_age)
    age_right = true
  else
    age_right = false
  end
  return age_right
end

#This method decide on employee status
def emp_def ( age_boolean, garlic_bread_boolean, health_insurance_boolean, emp_name, allergy)

# if age is right and is willing to eat garlic or signup for insurance
#  then "Probably not a vampire"
  
  if  ((age_boolean ==true)  && (( garlic_bread_boolean || health_insurance_boolean) ==true)) && (allergy !="sunshine")
    emp_status = "Probably not vampire"

  elsif ((age_boolean ==false)  && (( garlic_bread_boolean || health_insurance_boolean) ==true)) || allergy =="sunshine"
    emp_status = "Probably a vampire"

  elsif (age_boolean ==false)  && ( garlic_bread_boolean == false) && (health_insurance_boolean == false)
    emp_status = "Almost certianly a vampire"
  else
    emp_status = "Results inconclusive"
  end
  #end
  return emp_status

end
  
=begin
#-----------------------------------------------------------------------------#
main program
Release1: Interview with the Vampire
Collect information about the new employee
Name, age, year, do they like garlic, do they need heath insurance
Save Data.
=end
more_employees = true
max_age = 30

puts "Welcome to Werewolf Inc., quittin' time is always before sundown"
puts "*****************************************************************"
puts ""
puts "How many employees to process? "
emp_num = gets.chomp.to_i

puts "Number of Employees to enter : #{emp_num}"
counter = 1
#complete the survey for each employee
while counter <=emp_num do
  puts " What is your name? "
  name = gets.chomp
#check if name is Drake Cula or Tu Fang
  case name
    when "Drake Cula", "Tu Fang"
      emp_status = "Definitely a vampire"
      puts "--------------------------------------------------------------------"
      puts "Employee name is: #{name}"
      puts "emp_status status is : #{emp_status}"
      puts "--------------------------------------------------------------------"

    else 
# Age
    puts "How old are you? "
    age = gets.chomp.to_i

#  if age and a year of birth don't line up mathmetically, that employee is a vampire.

    puts " What year were you born? "
    year = gets.chomp.to_i

    age_year = age_right(age,year,max_age)

#    Vampires hate garlic. 
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/yes/Y/y/No/no/N/n)"
    garlic_bread = gets.chomp

    garlic_bread = answer_boolean(garlic_bread)

#   Vampires are immortal.
    
    puts "Would you like to enroll in the company's health insurance? (Yes/yes/Y/y/No/no/N/n)"
    health_insurance = gets.chomp

    health_insurance = answer_boolean(health_insurance)

  #----------------------------------
  #release 4: allergies
  #----------------------------------
    emp_done = " "
    allergy_arr = []

    while emp_done != "Done" do
      puts "Do you have any allergies? when done, enter 'Done'"
      emp_done = gets.chomp
      
      if emp_done != "Done"
        allergy_arr.push emp_done
        if emp_done == "sunshine"
          break
        end
      end
    end
  #call method to figure out employee's status

    employee = emp_def(age_year,garlic_bread,health_insurance,name,emp_done)
    #The following will print the result for the employee
    puts "--------------------------------------------------------------------"
    puts "Employee name : #{name}"
    puts "Employee age: #{age}"
    puts "Employee year of birth: #{year}"
    puts "Did employee provide the right age? #{age_year}"
    puts "Garlic bread: #{garlic_bread}"
    puts "Health insurance: #{health_insurance}"
    puts "Allergies are: #{allergy_arr.join(' ')}"
    puts "Result: #{employee}"
    puts ""
    puts "--------------------------------------------------------------------"
  end  
  counter += 1
end
puts "***********************************************************************************"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."