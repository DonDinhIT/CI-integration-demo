require 'spec_helper'

describe School do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @school = FactoryGirl.create(:school)
  end

  describe "Validation" do
    it "should have a valid School" do
      @school.should be_valid
    end

    it "is invalid without name" do
      FactoryGirl.build(:school, :name => nil).should_not be_valid
    end
  end
end
