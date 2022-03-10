class Cat
  attr_reader :name, :hungry

  def initialize(input_name)
    @name = input_name
    @hungry = true
  end

  def eat(mouse) # 25
    mouse.catch
    @hungry = false if mouse.found
  end
end