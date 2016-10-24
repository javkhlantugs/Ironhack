class Rook < ChessPiece
	def can_move? (hor, ver)
		if (@horizontal == hor && @vertical != ver) || (@horizontal != hor && @vertical == ver)
			true
		else
			false
		end
	end
end