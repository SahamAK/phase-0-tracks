class Santa
  

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That is a good #{cookie}"
  end

  def initialize(gender,ethnicity)
    p "Initializing Santa instance ..."
    @gender= gender
    @ethnicity= ethnicity
    @reindeer_ranking= ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age= 0
  end
  def print_list
    puts "Gender is #{@gender}"
    puts "Ethnicity is #{@ethnicity}"
  end
  #increase age by 1 year
  def celebrate_birthday
    @age +=1
  end
  #get the reindeer name and move to the end of the array .
  def get_mad_at(reindeer_name)
    index = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.delete_at(index)
    @reindeer_ranking.insert(@reindeer_ranking.length, reindeer_name)
    p "#{@reindeer_ranking}"
  end
  #setter to set the gender to a new value
  def gender=(new_gender)
    @gender = new_gender
    p "#{@gender}"
  end
  #getter to get the value of age
  def age
    @age
  end
  #getter to get ethnicity
  def ethnicity
    @ethnicity
  end
end
=begin
marvin = Santa.new
deadly = Santa.new
lastly = Santa.new


init_it = marvin.speak
marvin.eat_milk_and_cookies("snickerdoodle")
=end
santa = []
santa <<Santa.new("agender","black")
santa << Santa.new("female", "Latino")
santa << Santa.new("bigender", "white")
santa << Santa.new("male", "Japanese")
santa << Santa.new("female", "prefer not to say")
santa << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santa << Santa.new("N/A", "N/A")
santa.each do |person|
  puts "Santa detail"
  person.print_list
end
=begin
details = {
  "agender": "black",
  "female": "Latino",
  "bigender": "white",
  "male": "Japanese-African",
  "female": "prefer not to say",
  "gender fluid": "Mystical Creature (unicorn)",
  "N/A": "N/A",
  "male": "Martian",
  "child": "R2D2"
}
santas = []
details.each do |key, value|
  #p "#{key}"

  santas<<Santa.new(key, value)
end
santas.each do |person|
  person.print_list
end

santas.each  do |person|
  p "#{person.eat_milk_and_cookies("chocolate chip cookie")}"
end
=end

#Release 2
#getters and setters
age = santa[1].celebrate_birthday
p "age is #{age}"
get_mad = santa[1].get_mad_at("Dasher")
p "santa #{santa[1].print_list}"

santa[1].gender = ("Unique")

p "get age and ethnicity of 3rd element in santa array"
p "male age: #{santa[3].age} and Ethnicity: #{santa[3].ethnicity}."

