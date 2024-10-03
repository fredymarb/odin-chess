class Board
  def initialize
    @grid = Array.new(8) { Array.new(8, nil) }
  end

  def []=(notation, piece)
    row, col = to_arr(notation)
    @grid[row][col] = piece
  end

  def [](notation)
    row, col = to_arr(notation)
    @grid[row][col]
  end

  def display_board
    row = '  +---+---+---+---+---+---+---+---+'

    puts row
    @grid.each_with_index do |line, index|
      print(8 - index)
      puts " |#{line.join('   |')}   |"
      puts row
    end
    puts '    a   b   c   d   e   f   g   h'.freeze
  end

  def to_notation(arr)
    file = ('a'..'h').to_a
    row = 8 - arr[0]
    col = file[arr[1]]

    "#{col}#{row}"
  end

  def to_arr(notation)
    row = 8 - notation[1].to_i
    col = notation[0].ord - 'a'.ord
    [row, col]
  end
end
