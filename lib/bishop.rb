class Bishop < Piece
  include Slideable

  def move_dirs
    [
      [-1, 1], # top-left
      [1, 1], # top-right
      [-1, -1], # bottom-left
      [1, -1] # bottom-right
    ]
  end

  def to_s
    @color == :white ? 'B' : 'b'
  end
end
