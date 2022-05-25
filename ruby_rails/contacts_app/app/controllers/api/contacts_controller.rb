class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'api/contacts/index'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'api/contacts/show'
  end

end
