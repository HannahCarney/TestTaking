require 'teacher'

describe Teacher do

  let(:paper) { Teacher.new }

	it "should be able to write tests" do
	  expect(paper).not_to be_graded
	end

   	it "should be able to grade papers" do
	  expect(paper.paper_count).to eq(0)
	  paper.grade paper
	  expect(paper).to be_graded
      expect(paper.paper_count).to eq(1)    
  end


end



