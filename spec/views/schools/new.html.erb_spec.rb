require 'spec_helper'

describe "schools/new" do
  before(:each) do
    assign(:school, stub_model(School,
      :name => "MyString",
      :level => 1
    ).as_new_record)
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do
      assert_select "input#school_name[name=?]", "school[name]"
      assert_select "input#school_level[name=?]", "school[level]"
    end
  end
end
