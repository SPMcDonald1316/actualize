class Api::GamesController < ApplicationController
  def name
    @name = params[:name].upcase()
    if @name[0] == 'A'
      @message = 'Hey your name starts with the first letter of the alphabet!'
    else
      @message = 'Your name does not start with A'
    end
    render 'api/games/name'
  end

  def guess_a_number
    number = 58
    @guess = params[:number]
    if @guess.to_i() > number
      @message = 'Too high'
    elsif @guess.to_i() < number
      @message = 'Too low'
    else
      @message = 'Correct!'
    end
    render 'api/games/guessNumber'
  end

  def segment
    render 'api/games/segment'
  end

  def secret
    user_name = params[:user_name]
    password = params[:password]
    if user_name == 'hugh' && password == 'swordfish'
      @message = 'Valid credentials'
    else
      @message = 'Invalid credentials'
    end
    render 'api/games/secret'
  end
end
