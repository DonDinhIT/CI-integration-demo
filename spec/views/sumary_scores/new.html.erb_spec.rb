require 'spec_helper'

describe "sumary_scores/new" do
  before(:each) do
    assign(:sumary_score, stub_model(SumaryScore,
      :student_id => 1,
      :score => 1
    ).as_new_record)
  end

  it "renders new sumary_score form" do
    render

    assert_select "form[action=?][method=?]", sumary_scores_path, "post" do
      assert_select "input#sumary_score_student_id[name=?]", "sumary_score[student_id]"
      assert_select "input#sumary_score_score[name=?]", "sumary_score[score]"
    end
  end
end
