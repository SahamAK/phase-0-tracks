#Names: Saham Khozestani & Lauren Rodrigues
#6.2 Mandatory Pairing: Instance Methods
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
#This is a class of new planets with random capitals
#We initialize each class with planet name and capital
#The methods are to populate and pritn out climate
class New_planets
	def initialize(planet,capital)
		capital_city = capital
		planet_name = planet
		p "initializing #{planet_name} instance with capital #{capital_city} ..."
	end
	def populate(population)
		p "Population is #{population}."
	end
	def climate
		p "The climate is mostly cloudy!"
	end
end

p "Release 1: calling puppy methods"
p " "
rio = Puppy.new

p "#{rio.fetch("ball")}"

p "#{rio.speak(3)}"

p "#{rio.roll_over}"
 
p "#{rio.dog_years(2)}"

p "please enter the age of the dog in months:"

age = gets.chomp.to_i

hours = rio.sleep(age)
p " hours : #{hours}"
puts " "
#Release 2: Calling methods.
#intialize planets array
planets = []
capitals ="Adrastea Aitne Amalthea Ananke Aoede Arche Autonoe Callirrhoe Callisto Carme Carpo Chaldene  Cyllene Dia Elara Erinome Eukelade Euanthe Euporie Europa Eurydome Ganymede Harpalyke Hegemone Helike Hermippe Herse Himalia Io Iocaste Isonoe Jupiter LI Jupiter LII Kale Kallichore Kalyke Kore Leda Lysithea Megaclite Metis Mneme Orthosie Pasiphae Pasithee Praxidike Sinope Sponde Thebe Themisto"
capitals = capitals.split

counter = 0
planets_data = []

#In the this LOOP, generate a name for the planet with a random character and a random number from 1-1000.
while counter < 50
	alpha = "abcdefghijklmnopqrstuvwxyz".split(//)
	planet_name = alpha.sample
	number = rand(1..1000).to_s
	
	planets << (planet_name + number)
	#capital_name = capitals.sample
	
	counter += 1
end
#p planets
puts "Initializing planets array"
planets.each do |planet|
	planet = New_planets.new(planet,capitals.sample)
	planets_data << planet
end
puts "For each plante, display the population and climate"
puts " "
planets_data.each do |planet|
	planet.populate("1,000,000")
	planet.climate
end







