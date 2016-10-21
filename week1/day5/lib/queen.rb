require_relative ("chesspiece.rb")

class Queen < ChessPiece
	def can_move?(hor,ver)
		if ((@horizontal == hor && @vertical != ver) || (@horizontal != hor && @vertical == ver)) || ((hor - @horizontal == ver - @vertical) || (hor - @horizontal == @vertical + ver))
			true
		else
			false
		end
	end
end