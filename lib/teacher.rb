class Teacher
  DEFAULT_CAPACITY = 20 #students/#papers

def initialize(options = {})
  @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  @graded = false
  @tests = []
  @finished = false
end

  def grade test
    #if capacity is reached, raise an exception
    raise "No more tests to grade" if all_graded?  
    @tests << test
    @graded = true
  end

  def tests_that_are_graded
    @tests.reject {|test| test.not_graded? }
  end 

  def graded?
    @graded == true
  end

  def not_graded?
    @graded == false
  end 

  def graded_count
    @tests.count
  end

  def done!
    @finished = true
  end  

  def grade!
    @graded = true
  end

  def all_graded?
    graded_count == @capacity
  end 

end