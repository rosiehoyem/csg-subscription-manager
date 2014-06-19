require 'rails_helper'

RSpec.describe "SolarGardens", :type => :request do
  describe "GET /solar_gardens" do
    it "works! (now write some real specs)" do
      get solar_gardens_path
      expect(response.status).to be(200)
    end
  end
end
