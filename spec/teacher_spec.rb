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
end