# Name: Saham Khozestani
# 6.4 Release 2: Min in a Module
# Module go above classes
# The following method meant to be used as an instance method. Therefore no need to add self keyword

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end



class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)