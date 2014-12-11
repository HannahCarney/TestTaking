require 'test'

describe Test do
  it "should work after I run it" do
    new_test = Test.new
    expect(new_test).to be_workingTest
  end 

  it "should be empty when started" do
  	 new_test = Test.new
  	 expect(new_test).to be_emptyTest
  end 

  it "should be completed when finished" do
  	finished_test = Test.new
  	expect(finished_test).to be_completedTest
  end

end