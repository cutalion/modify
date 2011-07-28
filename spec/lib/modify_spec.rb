require 'spec_helper'

describe Modify do
  subject { TestModel.new }


  describe "modifies specified fields before validation" do
    before { subject.field1 = 'aaa' }
    before { subject.field2 = 'bbb' }
    before { subject.field3 = 'ccc' }

    before { subject.valid? }

    its(:field1) { should == 'AAA' }
    its(:field2) { should == 'BBB' }
    its(:field3) { should == 'ccc' }
  end
end
