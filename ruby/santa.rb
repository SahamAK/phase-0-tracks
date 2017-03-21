class Santa

	def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That is a good #{cookie}"
  end

  def initialize
    p "Initializing Santa instance ..."
  end

end

marvin = Santa.new
deadly = Santa.new
lastly = Santa.new


init_it = marvin.speak
marvin.eat_milk_and_cookies("snickerdoodle")