class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.first
    render 'contact.json.jb'
  end
end
