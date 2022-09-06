class Api::ContactsController < ApplicationController
  def index
    if current_user && params[:group]
      group = Group.find_by(name: params[:group])
      @contacts = group.contacts.where(user_id: current_user.id)
    elsif current_user
      @contacts = current_user.contacts
    else
      @contacts = []
    end
    render 'api/contacts/index.json.jb'
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
      phone_number: params[:phone_number],
      bio: params[:bio],
      address: params[:address],
      user_id: current_user.id
    })
    # @contact.lat, @contact.long = @contact.geolocate
    if @contact.save
      render 'api/contacts/show'
    else
      render json: {errors: @contact.errors.full_messages}
    end
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    if @contact.update({
      first_name: params[:first_name] || @contact.first_name,
      last_name: params[:last_name] || @contact.last_name,
      email: params[:email] || @contact.email,
      phone_number: params[:phone_number] || @contact.phone_number,
      bio: params[:bio] || @contact.bio,
      address: params[:address] || @contact.address,
    })
      # @contact.lat, @contact.long = @contact.geolocate
      @contact.save
      render 'api/contacts/show'
    else
      render json: {errors: @contact.errors.full_messages}
    end
  end

  def destroy
    contact = Contact.find_by(id: params[:id])
    contact.destroy
    render 'api/contacts/destroy'
  end
end
