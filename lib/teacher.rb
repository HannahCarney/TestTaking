class Teacher

def initialize
  @graded = false
  @tests = []
  @finished = false
end

  def grade test	
	@tests << test
	@graded = true
  end

  def graded?
	@graded == true
  end

  def graded_count
	@tests.count
  end

  def done!
     @finished = true
   end  

  def all_graded?
  	@finished == true
  end 

end