# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NAMES = ["Vanilla Victoria Sponge", "Chocolate Fudge Cake", "Lemon Drizzle Cake", "Rainbow Cake", "Carrot Cake", "Red Velvet Cake"]
FLAVOURS = ["Vanilla", "Chocolate", "Lemon", "Strawberry", "Fruit", "Coffee", "Walnut", " Other"]
PORTIONS = ["1-5", "5-10", "10-15", "15+", "25+", "50+", "75+", "100+"]
OCCASIONS = ["Wedding", "Birthday", "Christmas", "Anniversary", "Valentines", "Children’s", "Other"]

puts "Cleaning db"
Order.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating users"
user = User.create!(email: "tester@test.com", password: "123123", name: "Tester", about_me: "Some info about user")

puts "Creating items"
10.times do
  Item.create!(name: NAMES.sample, flavour: FLAVOURS.sample, portions: PORTIONS.sample, occasion: OCCASIONS.sample, cost: rand(5..25), description: "This is testy description", user: user)
end

puts "Creating orders"
10.times do
  Order.create!(description: "This is the order's description")
end
