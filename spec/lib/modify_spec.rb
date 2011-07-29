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
end
