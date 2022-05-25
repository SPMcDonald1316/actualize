require 'faker'

30.times do
  Product.create({
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 1..100.00),
    description: Faker::Commerce.material,
    image_url: ""
  })
end