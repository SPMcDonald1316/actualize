# Commit 1 Planning

# Features and methods to complete the App, You do not need to restrict planning from using "coding" words

# 1 -
# 2 -
# 3 -
# 4 -
# 5 -
# 6 -

# Commit 2, 3 and 4 - The App

class MineSweeper
  def initialize
    # store data here as attributes
    analyze_board
  end

  def analyze_board
    # This method should analyze each square to count how many bombs are surrounding that square. Then store that count data in your grid to display at a later time.
  end

  def clear_screen!
    system 'clear'
  end

  def print_formatted_board
    # display each row, with the appropriate characters and spacing of each square (hidden or the value of the square)
  end

  def update
    # change your data in this method
  end

  def draw
    # add additional draw code in this method
    clear_screen!
    print_formatted_board
  end

  def run_program
    # this code can run in a loop, just make sure there is a way to stop the loop
    until true
      update
      draw

      user_input = gets.chomp
      break if user_input == "quit"
    end
  end
end


# Runner Code
MineSweeper.new.run_program