require_relative "chesspiece.rb"
class Board
	def initialize
		@chess = [nil,[],[],[],[],[],[],[],[]]
	end
	def add_chess_piece (chess_piece)
		@chess[chess_piece.horizontal][chess_piece.vertical] = chess_piece
	end
	def can_move (x, y, final_x, final_y)
		if @chess[x][y] == nil
			puts "this is empty"
		else
			if final_x < 9 && final_y < 9
				if x == final_x && y == final_y
					puts "Not changing position please try again"
				else
					if @chess[x][y].can_move?(final_x, final_y)
						return "It can move"
					end

				end

			else
				puts "its out of the board"
			end
		end
	end
end




