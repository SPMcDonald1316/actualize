class Api::FortunesController < ApplicationController
  def fortune
    fortunes = ['You have been blessed', 'You have been cursed', 'No fortune']
    @fortune = fortunes[rand(3)]

    # @lotto = Array.new(6)
    # @lotto.forEach |x| do
    #   x = rand(1..60)
    #   @lotto
    # end
    render 'fortune.json.jb'
  end
end