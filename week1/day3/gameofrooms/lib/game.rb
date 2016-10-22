require_relative ("room.rb")
class Gameboard
	attr_accessor :all_rooms
	def initialize
		@all_rooms = []
	end
	def add_room (room)
		@all_rooms.push(room)
	end
	def move
		current_room = 0
		while current_room <= @all_rooms.length
		puts "==========="
		puts @all_rooms[current_room].text
		puts "Where would you like to go?(W, A, S, D)"
		puts ">"
		input = gets.chomp
			if input == "exit now"
				puts "thank you	"
				break
			elsif input == @all_rooms[current_room].exiit
				current_room += 1
					if input == @all_rooms[-1].exiit && current_room == @all_rooms.length
						puts "You have won the Jaze. Congrats!"
						break
					end
			else
				puts "wrong!! try again"
			end
		end
	end
end
