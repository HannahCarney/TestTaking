class Teacher
  DEFAULT_CAPACITY = 20 #students/#papers

def initialize(options = {})
  @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
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
    graded_count == @capacity
  end 

end