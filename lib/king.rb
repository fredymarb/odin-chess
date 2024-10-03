class King < Piece
  include Stepable

  def move_dirs
    [
      [0, 1], # up
      [0, -1], # down
      [-1, 0], # left
      [1, 0], # right
      [-1, 1], # top-left
      [1, 1], # top-right
      [-1, -1], # bottom-left
      [1, -1] # bottom-right
    ]
  end

  def to_s
    @color == :white ? 'K' : 'k'
  end
end
