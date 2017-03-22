class Puppy

  def fetch(toy)
    p "I brought back the #{toy}!"
      toy
  end
  def speak(count)
  	count.times { p "Woof!"}
  end
  def roll_over
  	p "*rolls over*"
  end
  def dog_years(human_year)
  	 dog_year = human_year * 7
  end
  # take age as input and calculate the hours of sleep
  def sleep(age)
  	# age is in months
  	
  	if age < 12
  		hours = 12
  	elsif age == (13..24)
  		hours = 6 
  	else
  		hours =16
  	end
  	p "If age is #{age} in months, sleeps for #{hours} hours."
  	hours
  end
  #Release 1: Declare an Intialize Method
  def initialize
  	p "initializing new puppy instance ..."
  end

end
#Releae 2: Own Class
class Countries
	def initialize(country,capital)
		capital_city = capital
		country_input = country
		p "initializing #{country_input} instance with capital #{capital_city} ..."
	end
end

rio = Puppy.new
=begin
p "#{rio.fetch("ball")}"

p "#{rio.speak(3)}"

p "#{rio.roll_over}"
 
p "#{rio.dog_years(2)}"

p "please enter the age of the dog in months:"

age = gets.chomp.to_i

hours = rio.sleep(age)
p " hours : #{hours}"
=end

country ="Germany"
capital = "Berlin"
lauren = Countries.new(country,capital)




