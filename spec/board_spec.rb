require 'board'

describe Board do

	let(:board) {Board.new}

	it 'should have 81 cells (9x9)' do
		expect(board.grid.count).to eq(81)
	end

	it "should have coordinates" do
		expect(board.grid[11]).to be_a(Cell)
	end

	it "should be able to add a number (1-9) to a cell" do
		board.grid[11].add(1)
		expect(board.grid[11].number).to eq([1])
	end
	it 'should replace a number with a new number if already occupied' do
		board.grid[11].add(1)
		expect(board.grid[11].number).to eq([1])
		board.grid[11].add(9)
		expect(board.grid[11].number).to eq([9])
	end
	
end