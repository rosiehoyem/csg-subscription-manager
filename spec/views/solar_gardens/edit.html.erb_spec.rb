require 'rails_helper'

RSpec.describe "solar_gardens/edit", :type => :view do
  before(:each) do
    @solar_garden = assign(:solar_garden, SolarGarden.create!(
      :size => "MyString",
      :address => "MyString",
      :city => "MyString",
      :zip => "MyString",
      :operator => "MyString",
      :contact_name => "MyString",
      :contact_phone => "MyString",
      :contact_email => "MyString"
    ))
  end

  it "renders the edit solar_garden form" do
    render

    assert_select "form[action=?][method=?]", solar_garden_path(@solar_garden), "post" do

      assert_select "input#solar_garden_size[name=?]", "solar_garden[size]"

      assert_select "input#solar_garden_address[name=?]", "solar_garden[address]"

      assert_select "input#solar_garden_city[name=?]", "solar_garden[city]"

      assert_select "input#solar_garden_zip[name=?]", "solar_garden[zip]"

      assert_select "input#solar_garden_operator[name=?]", "solar_garden[operator]"

      assert_select "input#solar_garden_contact_name[name=?]", "solar_garden[contact_name]"

      assert_select "input#solar_garden_contact_phone[name=?]", "solar_garden[contact_phone]"

      assert_select "input#solar_garden_contact_email[name=?]", "solar_garden[contact_email]"
    end
  end
end
