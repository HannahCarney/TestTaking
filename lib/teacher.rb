class Teacher

def initialize
  @graded = false
  @papers = []
end

  def grade paper	
	@papers << paper
	@graded = true
  end

  def graded?
	@graded == true
  end

  def paper_count
		@papers.count
  end

end