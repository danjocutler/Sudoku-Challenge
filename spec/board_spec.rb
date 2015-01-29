require 'board'

describe Board do

	let(:board) {Board.new}

	it 'should have 81 cells (9x9)' do
		expect(board.grid.count).to eq(81)
	end

	it "should have coordinates" do
		expect(board.grid[11]).to be_a(Cell)
	end

	xit "should be able to add numbers (1 - 9) in cells" do
		board.add(1, 11)
		expect(board.grid[11]).to eq(1)
	end
end