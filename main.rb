require_relative 'lib/board'
require_relative 'lib/slideable'
require_relative 'lib/piece'
require_relative 'lib/rook'

board = Board.new
board['e5'] = Rook.new(board, 'e5', :white)
board.display_board

p board['e5'].available_moves
