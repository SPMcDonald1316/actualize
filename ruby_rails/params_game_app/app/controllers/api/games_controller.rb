class Api::GamesController < ApplicationController
  def name
    @name = params['name'].upcase()
    if @name[0] == 'A'
      @message = 'Hey your name starts with the first letter of the alphabet!'
    end
    render(
      template: 'api/games/name',
      formats: [:json],
      handlers: [:jb]
    )
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
    render(
      template: 'api/games/guessNumber',
      formats: [:json],
      handlers: [:jb]
    )
  end
end
