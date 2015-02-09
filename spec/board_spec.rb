require 'board'

describe Board do

	context 'board creation and known number input' do

		let(:board) {Board.new}

		it 'should have 81 cells (9x9)' do
			expect(board.grid.count).to eq(81)
		end

		it 'should have coordinates' do
			expect(board.grid[11]).to be_a(Cell)
		end

		it 'should be able to add a number (1-9) to a cell' do
			board.grid[11].add(1)
			expect(board.grid[11].number).to eq([1])
		end

		it 'should replace a number in a cell with a new number if already occupied' do
			board.grid[11].add(1)
			board.grid[11].add(9)
			expect(board.grid[11].number).to eq([9])
		end

		it 'should raise an error if anything but "." or 1-9 is added' do
			expect {board.grid[11].add(0)}.to raise_error("Not a valid number")
		end
	end

	xcontext 'solution' do

		it 'all rows should have unique digits 1-9' do
			board.grid[11].add(1)
			board.grid[16].add(8)
			board.grid[19].add(3)
			expect(board.solve).to eq
		end

		# it 'all columns should have unique digits 1-9' do

		# end

		# it 'four 3x3 squares should have unique digits 1-9' do

		# end
	end
end