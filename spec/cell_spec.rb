require 'cell'

describe Cell do

	let(:cell) {Cell.new}
	let(:board) {double :board, :add}

	it 'should initialize as empty' do
		expect(cell).to be_empty
	end

	it "shouldn't be empty when a number is added" do
		cell.add(1)
		expect(cell.empty?).to be(false)
	end

end