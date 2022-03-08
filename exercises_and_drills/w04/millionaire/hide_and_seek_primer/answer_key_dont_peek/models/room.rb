class Room
  attr_reader :name, :inhabitants

  def initialize(input_name)
    @name = input_name
    @inhabitants = []
  end

  def enter(character) # 2
    @inhabitants << character
  end

  def has_mouse_here? # 13
    inhabitants.any? { |inhabitant| inhabitant.class == Mouse }
  end

  def mouse # 14
    inhabitants.find { |inhabitant| inhabitant.class == Mouse }
  end

  def cat # 15
    inhabitants.find { |inhabitant| inhabitant.class == Cat }
  end

  def leave(character) # 21
    @inhabitants.delete(character)
  end

  def move_to(other_room) # 22
    current_cat = cat
    leave(current_cat)
    other_room.enter(current_cat)
    return other_room
  end
end