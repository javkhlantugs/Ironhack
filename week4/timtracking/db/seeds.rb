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


# time entries

TimeEntry.create!(hours: 2, minutes: 30, comments: "blaaah", date: Date.today, project_id: projectA.id)
TimeEntry.create!(hours: 2, minutes: 30, comments: "blaaah", date: Date.today, project: projectA)
	projectA.time_entries.create!(hours: 3, minutes: 00, comments: "blah", date: Date.today)

projectC.time_entries.create!(hours: 3, minutes: 00, comments: "made facebook great again", date: Date.today)
projectB.time_entries.create!(hours: 3, minutes: 00, comments: "will make Yahoo great again", date: Date.today + 5.years)
projectB.time_entries.create!(hours: 3, minutes: 00, comments: "bang Marissa Mayer", date: Date.today)
projectD.time_entries.create!(hours: 3, minutes: 12, comments: "Beat Jack Dorsey", date: Date.today + 2.years)
projectE.time_entries.create!(hours: 1, minutes: 50, comments: "CHill with my nigga Musk", date: Date.today + 2.days)
projectE.time_entries.create!(hours: 3, minutes: 00, comments: "Buy a Tesla", date: Date.today - 1.days)
projectF.time_entries.create!(hours: 0, minutes: 00, comments: "Change transportation industry wih my nigga Elon musk", date: Date.today + 1.days)
projectJ.time_entries.create!(hours: 1, minutes: 10, comments: "reinvent Iphone", date: Date.today + 1.years)
projectJ.time_entries.create!(hours: 1, minutes: 10, comments: "Resurrect Steve Jobs", date: Date.today)
