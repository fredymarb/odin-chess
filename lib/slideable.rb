module Slideable
  def available_moves
    moves = []

    move_dirs.each do |dx, dy|
      row, col = @board.to_arr(@location)

      loop do
        row += dx
        col += dy
        new_location = @board.to_notation([row, col])

        break unless @board.in_bounds?([row, col])

        moves << new_location
      end
    end

    moves
  end
end
