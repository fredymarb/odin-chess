class Rook < Piece
  include Slideable

  def move_dirs
    [
      [0, 1], # up
      [0, -1], # down
      [-1, 0], # left
      [1, 0] # right
    ]
  end

  def to_s
    @color == :white ? 'R' : 'r'
  end
end
