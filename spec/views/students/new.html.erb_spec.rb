require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :name => "MyString",
      :school_id => 1
    ).as_new_record)
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_school_id[name=?]", "student[school_id]"
    end
  end
end
