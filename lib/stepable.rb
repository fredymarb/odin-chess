module Stepable
  def available_moves
    moves = []

    move_dirs.each do |dx, dy|
      row, col = @board.to_arr(@location)

      row += dx
      col += dy
      new_location = @board.to_notation([row, col])

      next unless @board.in_bounds?([row, col])

      moves << new_location
    end

    moves
  end
end
