class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.first
    render 'contact.json.jb'
  end

  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end
end
