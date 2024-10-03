class Board
  def initialize
    @grid = Array.new(8) { Array.new(8, nil) }
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
end

board = Board.new
board.display_board
puts board.to_notation([4, 7])
