require 'rails_helper'

RSpec.describe "subscribers/index", :type => :view do
  before(:each) do
    assign(:subscribers, [
      Subscriber.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :account_number => "Account Number",
        :property_address => "Property Address",
        :property_city => "Property City",
        :property_state => "Property State",
        :property_zip => "Property Zip",
        :subscription_size => "Subscription Size",
        :email => "Email",
        :phone => "Phone",
        :secondary_contact => "Secondary Contact",
        :secondary_phone => "Secondary Phone",
        :secondary_email => "Secondary Email",
        :payment_details => "Payment Details"
      ),
      Subscriber.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :account_number => "Account Number",
        :property_address => "Property Address",
        :property_city => "Property City",
        :property_state => "Property State",
        :property_zip => "Property Zip",
        :subscription_size => "Subscription Size",
        :email => "Email",
        :phone => "Phone",
        :secondary_contact => "Secondary Contact",
        :secondary_phone => "Secondary Phone",
        :secondary_email => "Secondary Email",
        :payment_details => "Payment Details"
      )
    ])
  end

  it "renders a list of subscribers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Property Address".to_s, :count => 2
    assert_select "tr>td", :text => "Property City".to_s, :count => 2
    assert_select "tr>td", :text => "Property State".to_s, :count => 2
    assert_select "tr>td", :text => "Property Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Subscription Size".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Email".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Details".to_s, :count => 2
  end
end
