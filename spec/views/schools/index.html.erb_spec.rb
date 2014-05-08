require 'spec_helper'

describe "schools/index" do
  before(:each) do
    assign(:schools, [
      stub_model(School,
        :name => "Name",
        :level => 1
      ),
      stub_model(School,
        :name => "Name",
        :level => 1
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
