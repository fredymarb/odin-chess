require_relative 'lib/board'
require_relative 'lib/slideable'
require_relative 'lib/piece'
require_relative 'lib/rook'
require_relative 'lib/bishop'

board = Board.new
board['d6'] = Rook.new(board, 'd6', :white)
board['e4'] = Bishop.new(board, 'e4', :white)
board.display_board

p board['d6'].available_moves
p board['e4'].available_moves
