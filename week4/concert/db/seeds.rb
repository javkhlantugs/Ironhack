# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concertA = Ticketmaster.create!(artist: 'Drake', venue: 'AA', datetime: Time.now + 4.hours, description: "Lorizzle ipsum dolor sizzle amizzle, crackalackin adipiscing da bomb. Mammasay mammasa mamma oo sa shizzle my nizzle crocodizzle you son of a bizzle, gangster volutpizzle, suscipit the bizzle, i saw beyonces tizzles and my pizzle went crizzle vel, arcu. Pellentesque mofo tortor. Sizzle erizzle. Rizzle izzle dolor dapibus fo shizzle my nizzle gangster tempizzle. Mauris pellentesque nibh et turpizzle. Shizzlin dizzle izzle tortor. Pellentesque sheezy rhoncizzle nisi. In hac habitasse platea dictumst. Pot get down get down. Curabitur tellizzle urna, pretizzle doggy, dizzle crackalackin, eleifend fo shizzle, nunc. suscipizzle. Integer semper velit sizzle shiz", price: 150, city: 'Miami')
concertB = Ticketmaster.create!(artist: 'Future', venue: 'AA', datetime: Time.now + 4.days, description: 'Autotune, nothin but auttune', price: 10, city: 'Los Angeles')
concertC = Ticketmaster.create!(artist: 'Jay', venue: 'AA', datetime: Time.now + 10.hours, description: 'Greatest rapper alive PERIOD', price: 400, city: 'Ulaanbaatar')
concertD = Ticketmaster.create!(artist: 'Nizar', venue: 'AA', datetime: Time.now + 5.hours, description: 'Adipisci vitae urna eu est hendrerit. Tempor massa interdum porta vitae, ac odio fermentum risus sed. In neque massa quis venenatis proin, nonummy nisl eget in magna nulla fusce, vulputate hendrerit nam turpis dignissim. Ut duis varius, commodo ligula praesent tempus viverra sed pellentesque, arcu quis, diam diam. Rhoncus sem viverra. Mauris justo tellus rerum tortor a, lorem nec id cursus platea. Ut fusce, erat pede vel sociis dui eget.', price: 50, city: 'London')
