# Contact.create!([
#   {first_name: "Kyle", last_name: "Kuhn", email: "kyle_kuhn1@hotmail.com", phone_number: "8013863282", middle_name: nil},
#   {first_name: "j", last_name: "j", email: ";skdfjhg;skhj", phone_number: "4567890-", middle_name: nil},
#   {first_name: "", last_name: "", email: "", phone_number: "", middle_name: nil},
#   {first_name: "Kyle", last_name: "Kuhn", email: "kisle.kuhn1@gmail.com", phone_number: "801-386-3282", middle_name: "bob"},
#   {first_name: "Bob", last_name: "Jones", email: "bobjones@gmail.com", phone_number: "801-123-4567", middle_name: "robert"},
#   {first_name: "Kendra", last_name: "Lucovitz", email: "kenlucovitz@gmail.com", phone_number: "801-458-2907", middle_name: ""}
# ])




















Group.create!(name: "friends")
Group.create!(name: "enemy")
Group.create!(name: "frenemy")

contact_ids = Contact.pluck(:id)
group_ids = Group.pluck(:id)


contact_ids.each do |c_id|
  selected_group_ids = group_ids.sample(rand(1..2))

  selected_group_ids.each do |g_id|
    GroupContact.create!(contact_id: c_id, group_id: g_id)
  end
end
