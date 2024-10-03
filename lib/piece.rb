class Piece
  attr_reader :color

  def initialize(board, location, color)
    @board = board
    @location = location
    @color = color
  end

  def enemy?(notation)
    !@board.empty?(notation) && @board[notation].color != @color
  end
end
