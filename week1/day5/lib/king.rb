require_relative ("chesspiece.rb")

class King < ChessPiece
	def can_move? (hor, ver)
		if (@horizontal == hor && (@vertical == ver - 1 || @vertical == ver + 1)) || (@vertical == ver && (@horizontal == hor + 1 || @horizontal == hor - 1)) || (((ver == @vertical + 1) || (ver == @vertical - 1)) && ((hor == @horizontal - 1) || (hor == @horizontal + 1)))
			true
		else
			false
		end
	end
end