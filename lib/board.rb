require 'cell'

class Board

	attr_reader :grid

	def initialize
		@grid = {}
		[*1..9].each do |row|
			[*1..9].each { |column| @grid["#{row}#{column}".to_i] = Cell.new}
		end
	end

	def add(number, coordinate)
		
	end

end