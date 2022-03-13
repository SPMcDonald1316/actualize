class Api::ExamplePagesController < ApplicationController
  def welcome
    render json: {message: "hello"}
  end

  def table
    render json: {message: "That's a nice table!"}
  end

  def another
    render json: {today: "Sunday"}
  end
end
