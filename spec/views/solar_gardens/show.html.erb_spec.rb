require 'rails_helper'

RSpec.describe "solar_gardens/show", :type => :view do
  before(:each) do
    @solar_garden = assign(:solar_garden, SolarGarden.create!(
      :size => "Size",
      :address => "Address",
      :city => "City",
      :zip => "Zip",
      :operator => "Operator",
      :contact_name => "Contact Name",
      :contact_phone => "Contact Phone",
      :contact_email => "Contact Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Operator/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Phone/)
    expect(rendered).to match(/Contact Email/)
  end
end
