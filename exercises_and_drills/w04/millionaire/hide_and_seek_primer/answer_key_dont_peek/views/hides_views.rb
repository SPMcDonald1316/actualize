module HidesViews
  def spacing_line(mutiple=1) # 3
    mutiple.times { puts "" }
  end

  def divider # 4
    puts "=" * 50
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

  def display_room(room) # 12
    spacing_line 
    puts "#{room.cat.name} is in the #{room.name}".center(50)
    puts " " + " -" * 23 + "   "

    if room.has_mouse_here?
      puts "You found the Mouse, #{room.mouse.name} is in this room.".center(50)
    else
      puts "There is no Mouse in this room.".center(50)
    end

    spacing_line
  end

  def list_rooms # 18
    rooms.each_with_index do |room, index|
      puts "          #{index + 1} - #{room.name}"
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

  def warning_message # 28
    if @show_warning
      puts "You have entered a number outside of range. Try again."
      @show_warning = false
    end
  end

  def exit_message(cat, mouse) # 26
    mouse_status = "#{mouse.name} is#{ ' not' unless mouse.found} found"
    cat_status = "#{cat.name} is#{ ' not' unless cat.hungry} hungry"

    spacing_line(3)
    puts mouse_status.center(50)
    puts cat_status.center(50)

    spacing_line
    puts "Thank you for playing".center(50)

    spacing_line(4)
  end
end