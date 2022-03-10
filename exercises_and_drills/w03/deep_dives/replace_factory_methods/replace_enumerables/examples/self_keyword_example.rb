
class Buttercup
  def print_self # this method could be named anything
    p self # the self keyword represents the object this method is called on
  end
end

class Array
  def print_self # this method could be named anything
    p self # the self keyword represents the object this method is called on
  end
end

buttercup = Buttercup.new # creting an instance of a Buttercup object
buttercup.print_self # calling my Buttercup#print_self on a Buttercup object

numbers = [1,2,3,4] # creting an instance of an Array object
numbers.print_self # calling my Array#print_self on a Array object

# Note: that there is no difference between Array objects and Buttercup objects as far as how ruby sees them, they are just instances of their respective class
# Arrays only appear different because of how they are formatted for common use.

# formatting an object can be helpful but be warned that sometimes changing the default methods of a class can have unexpected consequences as other methods may rely on them

class Duck
  def initialize
    @name = "QuackerJack"
    @age = 3
    @color = "yellow"
  end

  def to_s
    "[\"#{@name}\", #{@age}, \"#{@color}\"]"
  end

  def inspect
    "Ths is a #{self.class} object"
  end

  def speak
    "quack"
  end
end

duck = Duck.new
puts duck  # puts is the combination of print and to_s
p duck     # p is the combination of print and inspect
puts duck.speak 