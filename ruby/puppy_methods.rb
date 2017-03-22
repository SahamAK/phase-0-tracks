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
planets = []
capitals ="Adrastea
Aitne
Amalthea
Ananke
Aoede
Arche
Autonoe
Callirrhoe
Callisto
Carme
Carpo
Chaldene
Cyllene
Dia
Elara
Erinome
Eukelade
Euanthe
Euporie
Europa
Eurydome
Ganymede
Harpalyke
Hegemone
Helike
Hermippe
Herse
Himalia
Io
Iocaste
Isonoe
Jupiter LI
Jupiter LII
Kale
Kallichore
Kalyke
Kore
Leda
Lysithea
Megaclite
Metis
Mneme
Orthosie
Pasiphae
Pasithee
Praxidike
Sinope
Sponde
Thebe
Themisto"
capitals = capitals.split
#p capitals



#country ="Germany"
#capital = "Berlin"
#lauren = Countries.new(country,capital)

#lauren.populate("80,000,000")
#lauren.climate

counter = 0


while counter < 50
	alpha = "abcdefghijklmnopqrstuvwxyz".split(//)
	planet_name = alpha.sample
	number = rand(1..1000).to_s
	
	planets << (planet_name + number)
	#capital_name = capitals.sample
	
	counter += 1
end
#p planets

planets.each do |planet|
	planet = New_planets.new(planet,capitals.sample)
end








