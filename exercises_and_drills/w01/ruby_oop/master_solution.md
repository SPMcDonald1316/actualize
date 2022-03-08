``` ruby
class Animal
  # using attr_accessor: 
  attr_accessor :state

  # OR, using a getter method:
  def state
    @state
  end

  def initialize(input_type)
    @type = input_type
    @state = "awake"
  end

  def eat(food)
    puts "Yum! I, as a #{@type} love to eat #{food}!"
  end

  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end
end

# the following initializes a new animal with type "Parrot"
bird = Animal.new("Parrot")
# the eat instance method takes a parameter
bird.eat("crackers")
# the sleep instance method does not take a parameter
bird.sleep

puts bird.state

class Person < Animal
  attr_accessor :age, :gender, :name
  def initialize(input_options)
    @type = "person"
    @age = input_options[:age]
    @gender = input_options[:gender]
    @name = input_options[:name]
  end

  # this method overrites the Animal eat instance method
  def eat(food)
    response = ""
    if food == "person"
      "Sir! I am NOT a cannibal!"
    else
      "Yum! I am eating #{food}!"
    end
    puts response
  end

  def greet
    puts "Hi, I'm #{@name}. I'm a #{@type}, and #{@age} years old."
  end
end

justin = Person.new({age: 33, gender: "male", name: "Justin"})
jimmy = Person.new(age: 27, gender: "male", name: "Jimmy")
justin.eat('bananas')
justin.greet
jimmy.eat('person')

```
