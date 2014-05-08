require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :name => "Name",
        :school_id => 1
      ),
      stub_model(Student,
        :name => "Name",
        :school_id => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
