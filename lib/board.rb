class Board

	attr_reader :grid

	def initialize
		@grid = {}
		[*1..9].each do |row|
			[*1..9].each { |column| @grid["#{row}#{column}".to_i] = Cell.new}
		end
	end

	def row(number)
		raise "Not a valid number" if number < 1 || number > 9
		@grid.to_a.values_at(number -1, number + 8, number + 17, number + 26, number + 35,
												number + 44, number + 53, number + 62, number + 71)
	end

	def column(number)
		raise "Not a valid number" if number < 1 || number > 9
		@grid.to_a[(number - 1) * 9, 9].to_h
	end
end