require 'faker'
# contact = Contact.new(first_name: 'Nicky', last_name: 'Nicholson', phone_number: '222-2222', email: 'nicky@nicholson.com')
# contact.save

# contact = Contact.find_by(id: 2)
# contact.update(phone_number: '111-1111')
# contact = Contact.find_by(id: 3)
# contact.update(phone_number: '222-2222')
# contact = Contact.find_by(id: 4)
# contact.update(phone_number: '333-3333')

# 10.times do
#   firstName = Faker::Name.unique.first_name
#   lastName = Faker::Name.unique.last_name
#   Contact.create(first_name: firstName, last_name: lastName, phone_number: Faker::PhoneNumber.cell_phone, email: "#{firstName}@#{lastName}")
# end

used_ids = []

user_id = 1

con_id = rand(1..14)
contact = Contact.find_by(id: con_id)
puts contact.user_id


# while used_ids.length < 3
#   con_id = rand(1..14)
#   if !used_ids.include?(con_id)
#     used_ids.append(con_id)
#     contact = Contact.find_by(id: con_id)
#     contact.user_id = user_id
#   end
# end

# user_id = 2
# while used_ids.length < 6
#   con_id = rand(1..14)
#   if !used_ids.include?(con_id)
#     used_ids.append(con_id)
#     contact = Contact.find_by(id: con_id)
#     contact.user_id = user_id
#   end
# end

# user_id = 3
# # while used_ids.length < 9
# #   con_id = rand(1..14)
# #   used_ids.append(con_id)
# #   if !used_ids.include?(con_id)
# #     contact = Contact.find_by(id: con_id)
# #     contact.user_id = user_id
# #   end
# # end