require 'cell'

describe Cell do

	let(:cell) {Cell.new}
	let(:board) {double :board}

	it 'should initialize as empty' do
		expect(cell).to be_empty
	end

	xit 'should be able to hold a number (1-9)' do
		allow(board.add(1, 11))
	end

end