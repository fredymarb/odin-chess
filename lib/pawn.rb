class Pawn < Piece
  def forward_dir
    @color == :white ? -1 : 1
  end

  def available_moves
    moves = []

    row, col = @board.to_arr(@location)
    one_forward = [row + forward_dir, col]
    two_forward = [row + (2 * forward_dir), col]
    left_capture = [one_forward[0], one_forward[1] - 1]
    right_capture = [one_forward[0], one_forward[1] + 1]

    # move pawn a step forward if the spot is empty
    moves << to_notation(one_forward) if empty?(to_notation(one_forward))

    # move pawn two steps forward if the spot is empty
    moves << to_notation(two_forward) if can_move_two_steps(one_forward, two_forward)

    # left capture
    moves << to_notation(left_capture) if can_capture?(left_capture)

    # right capture
    moves << to_notation(right_capture) if can_capture?(right_capture)

    moves
  end

  def can_move_two_steps?(one_forward, two_forward)
    @board.empty?(two_forward) && @board.empty?(one_forward) && starting_location?
  end

  def starting_location?
    row, _col = @board.to_arr(@location)
    (@color == :black && row == 1) || (@color == :white && row == 6)
  end

  def to_s
    @color == :white ? 'P' : 'p'
  end

  private

  def can_capture?(arr)
    !empty?(to_notation(arr)) && enemy?(to_notation(arr))
  end

  def to_notation(arr)
    @board.to_notation(arr)
  end

  def empty?(notation)
    @board.empty?(notation)
  end
end
