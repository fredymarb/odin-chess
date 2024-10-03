class Knight < Piece
  include Stepable

  def move_dirs
    [
      [-1, 2], [1, 2],
      [-1, -2], [1, -2],
      [2, 1], [2, -1],
      [-2, 1], [-2, -1]
    ].freeze
  end

  def to_s
    @color == :white ? 'N' : 'n'
  end
end
