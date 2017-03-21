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
santa_ladies = []
details = {
  "agender": "black",
  "female": "Latino",
  "bigender": "white",
  "male": "Japanese-African",
  "female": "prefer not to say",
  "gender fluid": "Mystical Creature (unicorn)",
  "N/A": "N/A"
}
santas = []
details.each do |key, value|
  #p "#{key}"

  santas<<Santa.new(key, value)
end
santas.each do |person|
  person.print_list
end