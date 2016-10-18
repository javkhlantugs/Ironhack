require_relative("lib/user.rb")
require_relative("lib/car.rb")
first_user = User.new("jay","email","21","mongol","male")

first_user.login
first_user.greet
first_user.age = 25
puts first_user.age

puts ""
puts ""
puts "=========++++++========="
puts ""
puts ""
lambo = Car.new("Huracan", "BROOOOOM!!!")
toyota = Car.new("corolla", "broom")

lambo.enginerev
toyota.enginerev
Car.blah
