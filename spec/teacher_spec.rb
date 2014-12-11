require 'teacher'

describe Teacher do

	it "should be able to grade papers" do
	   miss_Smith = Teacher.new
	   miss_Smith.grade!
       expect(miss_Smith).to be_finished_grading
   end

end



