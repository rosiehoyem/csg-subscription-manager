require "rails_helper"

RSpec.describe SolarGardensController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/solar_gardens").to route_to("solar_gardens#index")
    end

    it "routes to #new" do
      expect(:get => "/solar_gardens/new").to route_to("solar_gardens#new")
    end

    it "routes to #show" do
      expect(:get => "/solar_gardens/1").to route_to("solar_gardens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/solar_gardens/1/edit").to route_to("solar_gardens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/solar_gardens").to route_to("solar_gardens#create")
    end

    it "routes to #update" do
      expect(:put => "/solar_gardens/1").to route_to("solar_gardens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/solar_gardens/1").to route_to("solar_gardens#destroy", :id => "1")
    end

  end
end
