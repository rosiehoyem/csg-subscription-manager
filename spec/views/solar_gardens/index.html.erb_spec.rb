require 'rails_helper'

RSpec.describe "solar_gardens/index", :type => :view do
  before(:each) do
    assign(:solar_gardens, [
      SolarGarden.create!(
        :size => "Size",
        :address => "Address",
        :city => "City",
        :zip => "Zip",
        :operator => "Operator",
        :contact_name => "Contact Name",
        :contact_phone => "Contact Phone",
        :contact_email => "Contact Email"
      ),
      SolarGarden.create!(
        :size => "Size",
        :address => "Address",
        :city => "City",
        :zip => "Zip",
        :operator => "Operator",
        :contact_name => "Contact Name",
        :contact_phone => "Contact Phone",
        :contact_email => "Contact Email"
      )
    ])
  end

  it "renders a list of solar_gardens" do
    render
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Operator".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
  end
end
