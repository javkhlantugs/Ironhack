require_relative ("lib/game.rb")
require_relative ("lib/room.rb")

room1 = Room.new("Simplecubic. Nothing is inside", "d")
room2 = Room.new("Darkcubic. Whole place is dark", "s")
room3 = Room.new("Obviouscubic. Obviously just exit", "s")
room4 = Room.new("GoldCubic. The best is at last", "a")
game = Gameboard.new
game.add_room(room1)
game.add_room(room2)
game.add_room(room3)
game.add_room(room4)

puts "Welcome to Jaze"
puts "Type *exit now* to exit the game at anytime"

game.move
