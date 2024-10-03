require_relative 'lib/board'
require_relative 'lib/slideable'
require_relative 'lib/piece'
require_relative 'lib/rook'
require_relative 'lib/bishop'
require_relative 'lib/queen'

board = Board.new
board.display_board

puts board.empty?('d4')
puts board.empty?('c4')
