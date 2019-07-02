class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
    render 'index.json.jb'
  end
end
