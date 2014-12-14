require 'teacher'

describe Teacher do
    
  let(:test) { Teacher.new(capacity: 20) }

    def tests_graded
      20.times { test.grade(Teacher.new)}
    end 
    it "should be able to write tests" do
      expect(test).not_to be_graded
    end

    it "should be able to grade tests" do
      expect(test.graded_count).to eq(0)
      test.grade test
      expect(test).to be_graded
      expect(test.graded_count).to eq(1)    
    end

     it "should know when it's finished grading papers" do
       expect(test).not_to be_all_graded
       tests_graded
       expect(test).to be_all_graded
     end 

     it "should not be able to grade any papers when done" do
        tests_graded
        expect{ test.grade(test)}.to raise_error(RuntimeError, 'No more tests to grade')
     end

     it "should only grade ungraded papers" do
       ungraded_test, graded_test = Teacher.new, Teacher.new
       graded_test.grade!
       test.grade(ungraded_test)
       test.grade(graded_test)
       expect(test.tests_that_are_graded).to eq([graded_test])
     end 

end