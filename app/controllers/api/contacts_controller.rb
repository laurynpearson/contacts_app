class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
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
      phone_number: params[:phone_number]
      )
    @contact.save
    render 'create.json.jb'
  end
end
