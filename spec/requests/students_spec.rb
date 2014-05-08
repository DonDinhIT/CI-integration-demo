require 'spec_helper'

describe "Students" do
  describe "GET /students" do
    it "works! (now write some real specs)" do
      get students_path
      expect(response.status).to be(200)
    end
  end
end
