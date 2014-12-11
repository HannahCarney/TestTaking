require 'test'

describe Test do

  let(:test) {Test.new}

  it "should not be completed when started" do
  	 expect(test).to be_empty
  	 expect(test).not_to be_completed
  	 expect(test).not_to be_graded
  end 

  it "should be completed when finished" do
  	test.complete!
  	expect(test).to be_completed
    expect(test).not_to be_empty
    expect(test).not_to be_graded
  end
  
  it "should be graded after it is finished" do
  	 test.complete!
  	 test.grade!
  	 expect(test).to be_completed
  	 expect(test).not_to be_empty
  	 expect(test).to be_graded
  end
end