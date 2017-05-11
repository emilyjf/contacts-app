class ContactsController < ApplicationController
  def one_contact
    @contacts = Contact.first
    render 'one_contact.html.erb'
  end

  def many_contacts 
    @contacts = Contact.all
    render 'many_contacts.html.erb'
  end

  def index
    @contacts = Contact.all
  end

  def new

  end

  def create
    contact = Contact.new(
                first_name: params[:first_name],
                middle_name: params[:middle_name],
                last_name: params[:last_name],
                email: params[:email],
                phone: params[:phone]
                )
  contact.save
end

def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
end

def edit
  @contact = Contact.find(params[:id])
end

def update
    contact = Contact.find(params[:id])
    contact.assign_attributes(
                             first_name: params[:first_name],
                             last_name: params[:last_name],
                             email: params[:email],
                             phone: params[:phone]
                             )
    contact.save
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
  end
end
  
