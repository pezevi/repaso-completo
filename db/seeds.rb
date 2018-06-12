# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

QuoteProduct.delete_all
Product.delete_all
Quote.delete_all
Client.delete_all


10.times do
  Product.create!(code: Faker::Code.isbn, name: Faker::Food.dish, description: Faker::Commerce.department, price: Faker::Commerce.price)
end

5.times do
  Client.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Space.galaxy, phone: Faker::PhoneNumber.cell_phone)
end
