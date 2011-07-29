require 'spec_helper'

describe Modify do

  context "modify with block parameter" do
    subject { TestModelWithBlockParameter.new }
    it_behaves_like "modify"
  end

  context "modify with lambda parameter" do
    subject { TestModelWithLambdaParameter.new }
    it_behaves_like "modify"
  end

  context "modify with hash options" do
    subject { TestModelWithHashOptions.new }
     
    describe "modifies specified fields before validation" do
      before { subject.field1 = 'aaa' }
      before { subject.field2 = 'BBB' }
      before { subject.field3 = 'cCc' }

      before { subject.valid? }

      its(:field1) { should == 'AAA' }
      its(:field2) { should == 'bbb' }
      its(:field3) { should == 'cCc' }
    end
  end
end
