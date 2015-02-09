class Board

	attr_reader :grid

	def initialize
		@grid = {}
		[*1..9].each do |row|
			[*1..9].each { |column| @grid["#{row}#{column}".to_i] = Cell.new}
		end
	end

	COLUMN1 = @grid.to_a[0, 9].to_h
	COLUMN2 = @grid.to_a[9, 9].to_h
	COLUMN3 = @grid.to_a[18, 9].to_h
	COLUMN4 = @grid.to_a[27, 9].to_h
	COLUMN5 = @grid.to_a[36, 9].to_h
	COLUMN6 = @grid.to_a[45, 9].to_h
	COLUMN7 = @grid.to_a[54, 9].to_h
	COLUMN8 = @grid.to_a[63, 9].to_h
	COLUMN9 = @grid.to_a[72, 9].to_h


end