class Board

	attr_reader :grid

	def initialize
		@grid = {}
		[*1..9].each do |y|
			[*1..9].each { |x| @grid["#{x}#{y}".to_i] = Cell.new}
		end
	end

	def row(number)
		raise "Not a valid number" if number < 1 || number > 9
		@grid.to_a[(number - 1) * 9, 9].to_h
	end

	def column(number)
		raise "Not a valid number" if number < 1 || number > 9
		@grid.to_a.values_at(number - 1, number + 8, number + 17, number + 26, number + 35,
												number + 44, number + 53, number + 62, number + 71).to_h
	end

	def box(number) #UGLIEST method ever!!
		raise "Not a valid number" if number < 1 || number > 9
		n = number
		if n <= 3
			@grid.to_a.values_at(((n - 1) * 3)..((n - 1) * 3 + 2), 
													((n - 1) * 3 + 9)..((n - 1) * 3 + 11),
													((n - 1) * 3 + 18)..((n - 1) * 3 + 20)).to_h
		elsif n <= 6
			@grid.to_a.values_at(((n + 5) * 3)..((n + 5) * 3 + 2),
													((n + 5) * 3 + 9)..((n + 5) * 3 + 11),
													((n + 5) * 3 + 18)..((n + 5) * 3 + 20)).to_h
		else
			@grid.to_a.values_at(((n + 11) * 3)..((n + 11) * 3 + 2),
													((n + 11) * 3 + 9)..((n + 11) * 3 + 11),
													((n + 11) * 3 + 18)..((n + 11) * 3 + 20)).to_h
		end
	end
end