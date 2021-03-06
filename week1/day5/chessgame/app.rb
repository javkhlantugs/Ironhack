require_relative ("lib/chesspiece.rb")
require_relative("lib/pawn.rb")
require_relative("lib/queen.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/rook.rb")
require_relative("lib/chess.rb")

rookblack1 = Rook.new(2, 1, "white")
queenblack1 = Queen.new(3, 4, "black")
bishop1 = Bishop.new(1, 8, "white")
pawn1 = Pawn.new(2, 3, "black")
jaysgame = Board.new
jaysgame.add_chess_piece(rookblack1)
jaysgame.add_chess_piece(queenblack1)
jaysgame.add_chess_piece(bishop1)
jaysgame.add_chess_piece(pawn1)
p jaysgame.can_move(3, 4, 5, 6)
p jaysgame.can_move(3, 2, 1, 2)
p jaysgame.can_move(2, 3, 2, 1)