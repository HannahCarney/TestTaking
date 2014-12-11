class Test

def initialize
	@empty = true
	@completed = false
end 

	def empty?
		@empty
	end

	def complete!
		@completed = true
	end

	def completed? # here completed returns false it is not completed when initialized
		@completed
	end

end