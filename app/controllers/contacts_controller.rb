class ContactsController < ApplicationController
  def one_contact
    @contacts = Contact.first
    render 'one_contact.html.erb'
  end

  def many_contacts 
    @contacts = Contact.all
    render 'many_contacts.html.erb'
  end
end
  
