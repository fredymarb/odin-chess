require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  describe '#to_notation' do
    context 'when arr is [6, 2]' do
      it "returns 'c2' " do
        arr = [6, 2]
        result = 'c2'
        expect(board.to_notation(arr)).to eq(result)
      end
    end

    context 'when arr is [3, 7]' do
      it "returns 'h6' " do
        arr = [3, 7]
        result = 'h5'
        expect(board.to_notation(arr)).to eq(result)
      end
    end
  end

  describe '#to_arr' do
    context 'when notation is a8' do
      it 'returns [0, 0] ' do
        notation = 'a8'
        result = [0, 0]
        expect(board.to_arr(notation)).to eq(result)
      end
    end

    context 'when notation is e1' do
      it 'returns [7, 4] ' do
        notation = 'e1'
        result = [7, 4]
        expect(board.to_arr(notation)).to eq(result)
      end
    end
  end
end
