#  This is just to start you off, it's entirely up to you how to organize your code.
# require the appropriate files from the model and view folders.
require_relative '../models/question.rb'
require_relative '../views/game_viewable.rb'

class GameController
  include GameViewable

  def initialize
    # create a collection of Question objects in this method to start the game.

  end

  def run
    greeting_view
    contestant_info = greeting_form

    playing = true
    while playing
      lets_play_view(contestant_info) # You can move this out of the loop, once you try running the program.

      # ==========================================================
      # this is the loop that runs during the program
      # the loop should contain if statements that decide which action is called at a given time of the game.
      # ==========================================================
      
      direction = user_input
      
      if direction == 'quit'
        playing = false
      end
    end
  end

  # write other methods in the controller class to define (non-rails) controller actions
  # call these methods within your controller 'run' method.
end