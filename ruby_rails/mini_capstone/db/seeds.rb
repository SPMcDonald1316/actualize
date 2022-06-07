require 'faker'

# 30.times do
#   Product.create({
#     name: Faker::Commerce.product_name,
#     price: Faker::Commerce.price(range: 1..100.00),
#     description: Faker::Commerce.material,
#     image_url: ""
#   })
# end

number = 5550001
5.times do
  name = Faker::Company.name
  Supplier.create({
    name: name,
    email: "#{name}@email.com",
    phone_number: number 
  })
  number += 1
end