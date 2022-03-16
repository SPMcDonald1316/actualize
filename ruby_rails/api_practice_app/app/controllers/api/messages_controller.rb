class Api::MessagesController < ApplicationController
  def first
    render 'first.json.jb'
  end

  def second
    render 'second.json.jb'
  end

  def third
    render 'third.json.jb'
  end

  def personal_info
    render 'info.json.jb'
  end
end
