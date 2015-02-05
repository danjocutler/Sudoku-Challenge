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
		num == '.' ? @empty = true : @empty = false
		@number.clear
		@number << num
	end
end