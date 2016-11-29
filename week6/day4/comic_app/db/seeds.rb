# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
clark = User.create!(first_name: "Clark", last_name: "Kent", email: "clark@kent.com", password: "password", password_confirmation: "password")
tony = User.create!(first_name: "Tony", last_name: "Stark", email: "tony@stark.com", password: "password", password_confirmation: "password")
rick = User.create!(first_name: "Rick", last_name: "Grimes", email: "rick@grimes.com", password: "password", password_confirmation: "password")



clark.comics.create!(title: "Watchmen", publisher: "Vertigo")
clark.comics.create!(title: "Walking Dead", publisher: "Planeta")

rick.comics.create!(title: "V for Vendetta", publisher: "Vertigo")
rick.comics.create!(title: "Watchmen", publisher: "Vertigo")

clark.comics.create!(title: "The unbeatable Squirrel Girl", publisher: "Marvel")
clark.comics.create!(title: "Luke cage", publisher: "Marvel")
