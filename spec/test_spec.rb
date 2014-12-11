require 'test'

describe Test do

  it "should not be completed when started" do
  	 new_test = Test.new
  	 expect(new_test).to be_empty
  	 expect(new_test).not_to be_completed

  end 

  it "should be completed when finished" do
  	finished_test = Test.new
  	finished_test.complete!
  	expect(finished_test).to be_completed

  end

end