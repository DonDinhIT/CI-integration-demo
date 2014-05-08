require 'spec_helper'

describe "sumary_scores/edit" do
  before(:each) do
    @sumary_score = assign(:sumary_score, stub_model(SumaryScore,
      :student_id => 1,
      :score => 1
    ))
  end

  it "renders the edit sumary_score form" do
    render

    assert_select "form[action=?][method=?]", sumary_score_path(@sumary_score), "post" do
      assert_select "input#sumary_score_student_id[name=?]", "sumary_score[student_id]"
      assert_select "input#sumary_score_score[name=?]", "sumary_score[score]"
    end
  end
end
