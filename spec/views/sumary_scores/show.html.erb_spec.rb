require 'spec_helper'

describe "sumary_scores/show" do
  before(:each) do
    @sumary_score = assign(:sumary_score, stub_model(SumaryScore,
      :student_id => 1,
      :score => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
