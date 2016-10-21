require_relative ("chesspiece.rb")

class Pawn < ChessPiece
	def can_move? (hor, ver)
		if @chosenside == "black"
			if hor == @horizontal && ((ver == @vertical - 2 ) || (ver == @vertical - 1))
				true
			else
				false
			end
		elsif @chosenside == "white" 
			if hor == @horizontal && ((ver == @vertical + 2) || (ver == @vertical + 1))
				true
			else
				false
			end

		else
			puts "Please choose either black or white"
		end
	end
end