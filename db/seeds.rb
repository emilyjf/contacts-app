# Contact.create!([
#   {first_name: "Becky", last_name: "Flanagan", email: "bf@gmail.com", phone: "212-313-2431", middle_name: nil, bio: nil},
#   {first_name: "Marc", last_name: "Flanagan", email: "mf@gmail.com", phone: "212-313-2433", middle_name: nil, bio: nil},
#   {first_name: "John", last_name: "Flanagan", email: "jff@gmail.com", phone: "212-313-2439", middle_name: nil, bio: nil},
#   {first_name: "Mimi", last_name: "Cukier", email: "cm@gmail.com", phone: "444-555-6666", middle_name: nil, bio: nil},
#   {first_name: "Tash", last_name: "Torres", email: "td@gmail.com", phone: "111-222-3333", middle_name: nil, bio: nil}
#               ])

# Group.create!([
#               {"friends", "family", "business"}
#               ])

Group.create!(name: "friends")
Group.create!(name: "family")
Group.create!(name: "business")

contact_ids = Contact.all
group_ids = Group.pluck(:id)

contact_ids.each do |c_id|
  selected_group_ids = group_ids.sample(rand(1..3))

  selected_group_ids.each do |g_id|
  GroupContact.create!(c_id: 1, g_id: 1)
  end
end
