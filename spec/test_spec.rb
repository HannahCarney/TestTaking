require 'test'

describe Test do

  it "should be empty when started" do
  	 new_test = Test.new
  	 expect(new_test).to be_empty

  end 

  it "should be completed when finished" do
  	finished_test = Test.new
  	finished_test.complete!
  	expect(finished_test).to be_completed
  end

end