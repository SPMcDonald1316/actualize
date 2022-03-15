class Api::ExamplePagesController < ApplicationController
  def welcome
    render json: {message: 'Welcome'}
  end

  def leg
    render json: {table: "top?"}
  end

  def another
    render json: {today: 'Sunday', time: Time.now.strftime("%A, %b %d")}
  end
end
