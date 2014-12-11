class Test

def initialize
	@empty = true
	@completed = false
	@graded = false
end 

	def empty? #yes it is empty
		@empty == true
	end

	def complete!
		@completed = true
		@empty = false
	end

	def completed? #yes it is completed
		@completed == true
	end

	def grade!
		@graded = true
	end

	def graded?
		@graded == true
	end

end