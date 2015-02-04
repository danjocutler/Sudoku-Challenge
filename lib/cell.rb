class Cell

	attr_reader :number

	def initialize
		@empty = true
		@number = []
	end

	def empty?
		@empty
	end

	def add(num)
		@empty = false
		@number << num
	end

end