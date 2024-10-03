require_relative 'lib/pieces'

board = Board.new
board['e4'] = Knight.new(board, 'e4', :white)

piece = board['e4'].available_moves
piece.each do |move|
  board[move] = 'o'
end
board.display_board
