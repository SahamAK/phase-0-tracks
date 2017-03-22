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

end

rio = Puppy.new

p "#{rio.fetch("ball")}"

p "#{rio.speak(3)}"

p "#{rio.roll_over}"