class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime('%b %d, %Y')
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def one_contact
    @contact = Contact.first
    render 'one_contact.html.erb'
  end

  def many_contacts
    @contacts = Contact.all
    render 'many_contacts.html.erb'
  end
end
