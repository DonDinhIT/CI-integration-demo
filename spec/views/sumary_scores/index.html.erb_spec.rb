require 'spec_helper'

describe "sumary_scores/index" do
  before(:each) do
    assign(:sumary_scores, [
      stub_model(SumaryScore,
        :student_id => 1,
        :score => 2
      ),
      stub_model(SumaryScore,
        :student_id => 1,
        :score => 2
      )
    ])
  end

  it "renders a list of sumary_scores" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
