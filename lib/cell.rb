class Cell

	attr_reader :number

	def initialize
		@empty = true
		@number = ['.']
	end

	def empty?
		@empty
	end

	def add(num)
		raise "Not a valid number" if num < 1 || num > 9 unless num == "."
		num == '.' ? @empty = true : @empty = false
		@number.clear
		@number << num
	end
end