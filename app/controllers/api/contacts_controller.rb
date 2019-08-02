class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
    # if current_user
    #   @contact = current_user.contacts
    # else
    #   @contact = []
    # end
    render 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      # middlename: params[:middle_name],
      # bio: params[:bio],
      # user_id: current_user.id
      )
    if @contact.save
      render 'create.json.jb'
    else
      render 'errors.json.jb'
    end
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    # @contact.middlename = params[:middle_name]
    # @contact.bio = params[:bio]

    if @contact.save
      render 'update.json.jb'
    else
      render 'errors.json.jb'
    end
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.delete
    render 'delete.json.jb'
  end
end
