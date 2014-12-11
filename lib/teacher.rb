class Teacher

  def initialize
    @graded = false
  end

  def grade!
	@graded = true
  end

  def finished_grading?
	@graded == true
  end
end