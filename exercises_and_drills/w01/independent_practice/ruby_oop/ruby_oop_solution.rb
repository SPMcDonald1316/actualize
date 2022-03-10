#Write your solution below:

class Animal

  def initialize(input_options)
    @type = input_options
    @state = state
  end

  def type
    @type
  end

  def eat(food)
    @eat
    p "The #{@type} is eating #{food}"
  end

  def state
    @state
  end 

  def sleep
    @state = "asleep"
  end

  def awake
    @state = "awake"
  end

end 

animal1 = Animal.new("dog")
animal2 = Animal.new("raccoon")

animal1.eat("kibble")
animal2.eat("trash")

p animal1.awake
p animal2.sleep




class Person < Animal 
  
  def intialize(input_options)
    @age = age
    @gender = gender
    @name = name
    @type = type
  end

  def eat(food)
    if food == "human"
      p "Silly Zombie, humans cannot eat humans!"
    else
      p "The #{@type} is eating #{food}"
    end 
  end

  def type
    @type = "human" 
  end

  def age(text)
    @age = text
  end

end 

person1 = Person.new("18")

p person1.type
p person1.age("19")

person1.eat("bologna")
person1.eat("human")
