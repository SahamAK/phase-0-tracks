
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That is a good #{cookie}"
  end

  def initialize(gender,ethnicity)
    p "Initializing Santa instance, gender: #{gender}, ethnicity: #{ethnicity}"
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
  #def gender=(new_gender)
  #  @gender = new_gender
  #  p "#{@gender}"
  #end
  #getter to get the value of age
  #def age
   # @age
  #end
  #getter to get ethnicity
  #def ethnicity
    #@ethnicity
  #end
end

=begin
marvin = Santa.new
deadly = Santa.new
lastly = Santa.new


init_it = marvin.speak
marvin.eat_milk_and_cookies("snickerdoodle")
=end
=begin
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

details = {
  "Fictional": "Persian Princess",
  "female": "Shahrzad",
  "bigender": "I dont Care",
  "male": "Martian",
  "child": "R2D2"
}

details.each do |key, value|
  #p "#{key}"

  santa<<Santa.new(key, value)
end
santa.each do |person|
  person.print_list
end

santa.each  do |person|
  p "#{person.eat_milk_and_cookies("chocolate chip cookie")}"
end


#Release 2
#getters and setters driver code
age = santa[1].celebrate_birthday
p "age is #{age}"
p "We are mad at Dasher. He is moving to the end of the line!"
get_mad = santa[1].get_mad_at("Dasher")
p "santa #{santa[1].print_list}"

santa[1].gender = ("Unique")

p "get age and ethnicity of first element in santa array"
p "gender: #{santa[1].gender}, age: #{santa[1].age} and Ethnicity: #{santa[1].ethnicity}."

#Release 3: Refactor with attr_reader and attr_accessor 
=end

santas = []
genders_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "fish", "crab", "gen-x","space","N/A"]
ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "martian","crabby","Persian","N/A"]

counter = 0
while  counter <= 1000 do
  santas << Santa.new(genders_list.sample,ethnicities_list.sample)
  counter +=1
end
santas.each do |santa|
  santa.age = rand(1..140)
end
puts " Print Santas detail"
santas.each do |santa|
  puts " Gender: #{santa.gender}  Ethnicity: #{santa.ethnicity} age: #{santa.age}"
end

puts "Total Number of Registered Satnas : #{santas.length}"