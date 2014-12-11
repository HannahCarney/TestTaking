class Test

def initialize
	@empty = true
	@completed = false
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

end