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

        if @board.empty?(new_location)
          moves << new_location
        else
          if enemy?(new_location)
            moves << new_location
            break
          end

          break
        end
      end
    end

    moves
  end
end
