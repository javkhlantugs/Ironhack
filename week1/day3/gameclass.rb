class Game 
	attr_accessor :list_of_rooms, :current_position	
	
	list_of_rooms = []
	def add_room (item)
		list_of_rooms.push(item)
	end
	def current_position
		list_of_rooms[0]
	end
	def move
		if user_input
