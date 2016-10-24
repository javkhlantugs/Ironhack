require_relative ("chesspiece.rb")
class  Knight < ChessPiece
	def can_move?(hor, ver)
		if (((hor == @horizontal + 2) || (hor == @horizontal - 2)) && ((ver == @vertical - 1)||(ver == @vertical +1))) || (((ver == @vertical + 2) || (ver == @vertical-2)) && ((hor == @horizontal - 1)||(hor == @horizontal + 1)))
			true
		else
			false
		end
	end
end