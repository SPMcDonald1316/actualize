class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'api/contacts/index'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'api/contacts/show'
  end

  def create
    @contact = Contact.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    })
    @contact.save
    render 'api/contacts/show'
  end
end
