# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FLAVOURS = ["Lemon Drizzle", "Red Velvet", "Chocolate", "Carrot", "Sponge", "Chiffon", "Pineapple Upsidedown", "Victoria Spong", "Coffee and Walnut", "Vanilla", "Cheesecake", "Fruit", "Cinnamon", "Marble", "other"]
PORTIONS = ["1 - 4", "5 - 8", "9 - 14", "15 - 24", "25 - 99", "100"]
OCCASIONS = ["Wedding Cake", "Birthday Cake", "Cupcakes", "Christmas Cake", "Anniversary Cake", "Valentines Cake", "Children’s Cake", "Other"]

puts "Cleaning db"
Item.destroy_all
User.destroy_all

puts "Creating users"
user = User.create!(email: "test@test.com", password: "123123", name: "tester")

12.times do
  port = PORTIONS.sample
  puts port
  Item.create!(flavour: FLAVOURS.sample, portions: port, user: user, occasion: OCCASIONS.sample, cost: 2, description: "This is testy description")
end
