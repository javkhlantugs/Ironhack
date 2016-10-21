require_relative("lib/authenticator.rb")
jay = User.new("javkhlantugs","pass")

puts "Hello! Please provide username"
puts "Username:"
username_input = gets.chomp

puts "Password:"
password_input = gets.chomp

jay.checker(username_input, password_input)