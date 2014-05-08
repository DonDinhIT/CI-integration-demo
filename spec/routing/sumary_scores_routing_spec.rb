require "spec_helper"

describe SumaryScoresController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sumary_scores").to route_to("sumary_scores#index")
    end

    it "routes to #new" do
      expect(:get => "/sumary_scores/new").to route_to("sumary_scores#new")
    end

    it "routes to #show" do
      expect(:get => "/sumary_scores/1").to route_to("sumary_scores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sumary_scores/1/edit").to route_to("sumary_scores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sumary_scores").to route_to("sumary_scores#create")
    end

    it "routes to #update" do
      expect(:put => "/sumary_scores/1").to route_to("sumary_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sumary_scores/1").to route_to("sumary_scores#destroy", :id => "1")
    end

  end
end
