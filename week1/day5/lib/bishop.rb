require_relative ("chesspiece.rb")

class Bishop < ChessPiece
	def can_move? (hor, ver)
		x_distance = (hor - @horizontal) * (hor - @horizontal)
		y_distance = (ver - @vertical)* (ver - @vertical)
		if x_distance == y_distance
			
			true
		else
			false
		end
	end
end