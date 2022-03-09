# Two classes that share initialize, brake, accelerate, and turn methods
# NOT DRY 
# Problem is inheritance alone won't fix since we don't want Bike to inherit honk_horn or Car to inherit ring_bell

# class Car
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeep!"
#   end
# end

# class Bike
#   def initialize
#     @speed = 0
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# SOLUTION 1
# Create a thrid class that encompasses the shared methods while leaving the differing methods in their respective classes

# class Vehicle
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end
# end

# class Car < Vehicle
#   def honk_horn
#     puts "Beeeeep!"
#   end
# end

# class Bike < Vehicle
#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# SOLUTION 2
module Moveable
  attr_reader :speed, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Moveable

  def honk_horn
    puts "Beeeeep!"
  end
end

class Bike
  include VehicleMoveable

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new

p bike.speed
p bike.direction
puts

bike.accelerate
bike.turn('south')
p bike.speed
p bike.direction

puts
p car.speed
p car.direction
puts

car.accelerate
car.accelerate
car.turn('west')
p car.speed
p car.direction