class Api::ExamplePagesController < ApplicationController
  def welcome
    render json: {message: 'hello' }
  end

  def leg
    render json: {table: 'top?'}
  end

  def another
    render 'tuesday.json.jb'
  end

  def bill
    render 'morning.json.jb'
  end
end
