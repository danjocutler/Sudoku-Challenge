require 'board'

describe Board do

	let(:board) {Board.new}

	it 'should have 81 cells (9x9)' do
		expect(board.grid.count).to eq(81)
	end

	it "should have coordiantes" do
		expect(board.grid["11"]).to be_a(Cell)
	end
end