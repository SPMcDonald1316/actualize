class HideAndSeek
  def initialize # 1
    @running = true
    @show_warning = false

    @cat = {name: "Tom", hungry: true, cat: true}
    @mouse = {name: "Jerry", found: false, mouse: true}

    @rooms = [
              {name: "Living Room", inhabitants: []},
              {name: "Kitchen", inhabitants: []},
              {name: "Bedroom", inhabitants: []},
              {name: "Dining Room", inhabitants: []},
              {name: "Garage", inhabitants: []}
              ].shuffle

    picking_room_order = @rooms.shuffle

    hiding_room = picking_room_order[0]
    enter(hiding_room, @mouse)

    @current_room = picking_room_order[1]
    enter(@current_room, @cat)
  end

  def enter(room, character) # 2
    room[:inhabitants] << character
  end

  def spacing_line(mutiple=1) # 3
    mutiple.times { puts "" }
  end

  def divider # 4
    puts "=" * 50
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

    exit_message(@cat, @mouse)
  end

  def opening_scene # 6
    clear_screen
    header_message
    welcome_message
    waiting_for_user
  end

  def clear_screen # 7
    system "clear"
  end

  def header_message # 8
    divider
    puts "Hide and Seek".center(50)
    divider
    spacing_line
  end

  def welcome_message # 9
    spacing_line
    puts "Welcome to \"Hide and Seek\"".center(50)
    spacing_line 
    puts "Press enter to continue.".center(50)
    spacing_line(8)
  end

  def waiting_for_user # 10
    gets
  end

  def room_scene # 11
    clear_screen
    header_message
    display_room(@current_room, @cat)
  end

  def display_room(room, cat) # 12
    spacing_line 
    puts "#{cat[:name]} is in the #{room[:name]}".center(50)
    puts " " + " -" * 23 + "   "

    if has_mouse_here?(room)
      puts "You found the Mouse, #{mouse_in_room(room)[:name]} is in this room.".center(50)
    else
      puts "There is no Mouse in this room.".center(50)
    end

    spacing_line
  end

  def has_mouse_here?(room) # 13
    room[:inhabitants].any? { |inhabitant| inhabitant[:mouse] }
    # room[:inhabitants].any? { |inhabitant| inhabitant.class == Mouse } # only works after making Mouse class
  end

  def mouse_in_room(room) # 14
    room[:inhabitants].find { |inhabitant| inhabitant[:mouse] }
    # room[:inhabitants].find { |inhabitant| inhabitant.class == Mouse } # only works after making Mouse class
  end

  def cat_in_room(room) # 15
    room[:inhabitants].find { |inhabitant| inhabitant[:cat] }
    # room[:inhabitants].find { |inhabitant| inhabitant.class == Cat } # only works after making Cat class
  end

  def check_end_condition_met # 16
    @running = false if @mouse[:found] && !@cat[:hungry]
  end

  def choose_a_room_scenario # 17
    list_rooms
    warning_message ##
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
    @current_room = move_to(@current_room, @rooms[converted_index])
  end

  def list_rooms # 18
    @rooms.each_with_index do |room, index|
      puts "          #{index + 1} - #{room[:name]}"
    end
    
    spacing_line
  end

  def room_move_prompt # 19
    puts "Press 'q' to quit or"
    print "Enter a number to move to a room: "
  end

  def user_input # 20
    gets.chomp
  end

  def leave(room, character) # 21
    room[:inhabitants].delete(character)
  end

  def move_to(room, other_room) # 22
    current_cat = cat_in_room(room)
    leave(room, current_cat)
    enter(other_room, current_cat)
    return other_room
  end

  def feed_cat_scenario # 23
    eat(@cat, @mouse) if has_mouse_here?(@current_room)
  end

  def catch(mouse) # 24
    mouse[:found] = true
  end

  def eat(cat, mouse) # 25
    catch(mouse)
    cat[:hungry] = false if mouse[:found]
  end

  def exit_message(cat, mouse) # 26
    mouse_status = "#{ mouse[:name] } is#{ ' not' unless mouse[:found] } found"
    cat_status = "#{ cat[:name] } is#{ ' not' unless cat[:hungry] } hungry"

    spacing_line(3)
    puts mouse_status.center(50)
    puts cat_status.center(50)
    
    spacing_line
    puts "Thank you for playing".center(50)
    
    spacing_line(4)
  end

  def in_range?(input) # 27
    input > 0 && input <= @rooms.length
  end

  def warning_message # 28
    if @show_warning
      puts "You have entered a number outside of range. Try again."
      @show_warning = false
    end
  end
end

HideAndSeek.new.run_program