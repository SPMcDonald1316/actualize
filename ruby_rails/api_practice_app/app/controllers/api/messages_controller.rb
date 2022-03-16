class Api::MessagesController < ApplicationController
  def first
    render 'first.json.jb'
  end

  def second
    render 'second.json.jb'
  end
end
