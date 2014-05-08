require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :school_id => 1
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_school_id[name=?]", "student[school_id]"
    end
  end
end
