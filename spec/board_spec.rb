require 'board'

describe Board do

	let(:board) {Board.new}

	context 'board creation and known number input' do

		it 'has 81 cells (9x9)' do
			expect(board.grid.count).to eq(81)
		end

		it 'has coordinates' do
			expect(board.grid[11]).to be_a(Cell)
		end

		it 'is able to add a number (1-9) to a cell' do
			board.grid[11].add(1)
			expect(board.grid[11].number).to eq([1])
		end

		it 'replaces a number in a cell with a new number if already occupied' do
			board.grid[11].add(1)
			board.grid[11].add(9)
			expect(board.grid[11].number).to eq([9])
		end

		it 'raises an error if anything but "." or 1-9 is added' do
			expect {board.grid[11].add(0)}.to raise_error("Not a valid number")
		end
	end

	context 'rows, columns and boxes'

		it 'has 9 cells per column' do
			expect(board.grid.to_a[0, 9].to_h.count).to eq(9)
		end
	# xcontext 'solution' do

	# 	it 'all rows should have unique digits 1-9' do
	# 		board.grid[11].add(1)
	# 		board.grid[16].add(8)
	# 		board.grid[19].add(3)
	# 		expect(board.solve).to eq
	# 	end

	# 	it 'all columns should have unique digits 1-9' do

	# 	end

	# 	it 'nine 3x3 squares should have unique digits 1-9' do

	# 	end
	# end
end