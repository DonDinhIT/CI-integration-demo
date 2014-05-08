require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "Name",
      :school_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
