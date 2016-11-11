# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
userA = User.create!(username: "Jay", email: "abc@example.com")
userB = User.create!(username: "Gucci", email: "xyz@example.com")
userC = User.create!(username: "Chigga", email: "nihaonigga@example.com")


userA.products.create!(title: "Iphone", description: "Smart Phone, a10 chip, 12mp camera. Things you have never imagined to be in a phone", deadline: Date.today + 10.days)
userA.products.create!(title: "Lamborghini", description: "Hypercar, Godlike speed, beyond godlike acceleration", deadline: Date.today + 2.days)
userB.products.create!(title: "Haribo", description: "Gummy bear, you already know", deadline: Date.today + 1.days)
userB.products.create!(title: "Goodshit", description: "Dat good good", deadline: Date.today + 1.days)
userC.products.create!(title: "Private Jet", description: "Jet G6, dan bilzerian puked on the sofa, drake cried in the restroom", deadline: Date.today + 1.months)