class Game 
	attr_accessor :list_of_rooms, :current_position
	def initialize
		@list_of_rooms = []
	end
	current_position = 0
	def add_room (item)
		@list_of_rooms[].push(item)
	end
	def move
		puts "Where would you want to go?\n>"
		user_input=gets.chomp
			if user_input == @list_of_rooms[current_position].ex
			puts "You have exited the room"
			@list_of_rooms[current_position + 1]
			current_position += 1
			else
			puts "There is no exit. Please try again"
			move
			end
		end

end



class Rooms
	attr_accessor :name, :describe, :ex, 
	def initialize (name, describe, ex)
		@name = name
		@describe = describe
		@exit = ex	
	end

end
