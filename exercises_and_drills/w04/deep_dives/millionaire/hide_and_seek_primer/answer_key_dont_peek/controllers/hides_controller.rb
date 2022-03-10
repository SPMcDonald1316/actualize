require_relative '../views/hides_views.rb'

require_relative '../models/cat.rb'
require_relative '../models/mouse.rb'
require_relative '../models/room.rb'

class HidesController
  include HidesViews

  attr_reader :rooms, :cat, :mouse, :current_room

  def initialize # 1
    @running = true
    @show_warning = false

    @cat = Cat.new("Tom")
    @mouse = Mouse.new("Jerry")

    @rooms = [
              Room.new("Living Room"),
              Room.new("Kitchen"),
              Room.new("Bedroom"),
              Room.new("Dining Room"),
              Room.new("Garage")
              ].shuffle

    picking_room_order = rooms.shuffle

    hiding_room = picking_room_order[0]
    hiding_room.enter(mouse)

    @current_room = picking_room_order[1]
    @current_room.enter(cat)
  end

  def run_program # 5
    opening_scene

    while @running 
      room_scene

      check_end_condition_met
      break unless @running

      choose_a_room_scenario
      break unless @running

      feed_cat_scenario
    end

    exit_message(cat, mouse)
  end

  def opening_scene # 6
    clear_screen
    header_message
    welcome_message
    waiting_for_user
  end

  def room_scene # 11
    clear_screen
    header_message
    display_room(current_room)
  end

  def in_range?(input) # 27
    input > 0 && input <= @rooms.length
  end

  def choose_a_room_scenario # 17
    list_rooms
    warning_message
    room_move_prompt
    choice = user_input
    
    if choice == "q"
      @running = false
      return
    end

    unless in_range?(choice.to_i)
      @show_warning = true
      return
    end

    converted_index = choice.to_i - 1
    @current_room = @current_room.move_to(rooms[converted_index])
  end

  def feed_cat_scenario # 23
    cat.eat(mouse) if current_room.has_mouse_here?
  end

  def check_end_condition_met # 16
    @running = false if mouse.found && !cat.hungry
  end
end