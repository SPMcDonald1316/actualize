class Api::FortunesController < ApplicationController
  def fortune
    fortunes = ['You have been blessed', 'You have been cursed', 'No fortune']
    @fortune = fortunes[rand(3)]

    render 'fortune.json.jb'
  end
  
  def lottery
    @lotto = Array.new(6)
    @lotto.map! {|x| x = rand(1..60)}
    render 'lotto.json.jb'
  end
end