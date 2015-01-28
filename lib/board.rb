require 'cell'

class Board

	attr_reader :grid

	def initialize
		@grid = {}
		[*1..9].each do |row|
			[*1..9].each { |column| @grid["#{row}#{column}"] = Cell.new}
		end
	end
end