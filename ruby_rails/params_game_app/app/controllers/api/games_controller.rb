class Api::GamesController < ApplicationController
  def name
    @name = params['name'].upcase()
    if @name.start_with?('A')
      @message = 'Hey your name starts with the first letter of the alphabet!'
    end
    render()
  end

  def guess_a_number
    number = 58
    @guess = params['number']
    if @guess.to_i() > number
      @message = 'Too high'
    elsif @guess.to_i() < number
      @message = 'Too low'
    else
      @message = 'Correct!'
    end
    render 'guessNumber.json.jb'
  end
end
