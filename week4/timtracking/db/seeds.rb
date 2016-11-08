# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projectA = Project.create!(name: "Google")
projectB = Project.create!(name: "Yahoo", description: "Losers")
projectC = Project.create!(name: "Facebook", description: "Social")
projectD = Project.create!(name: "Twitter", description: "Another Social")
projectE = Project.create!(name: "Tesla", description: "Transportation Musk")
projectF = Project.create!(name: "Hyperloop", description: "Transportation2 Musk")
projectG = Project.create!(name: "Amazon", description: "Online shop")
projectH = Project.create!(name: "Ebay", description: "Online bid shop")
projectI = Project.create!(name: "Microsoft", description: "Windows")
projectJ = Project.create!(name: "Apple", description: "Iphone")