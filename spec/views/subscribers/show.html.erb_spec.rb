require 'rails_helper'

RSpec.describe "subscribers/show", :type => :view do
  before(:each) do
    @subscriber = assign(:subscriber, Subscriber.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Account Number/)
    expect(rendered).to match(/Property Address/)
    expect(rendered).to match(/Property City/)
    expect(rendered).to match(/Property State/)
    expect(rendered).to match(/Property Zip/)
    expect(rendered).to match(/Subscription Size/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Secondary Contact/)
    expect(rendered).to match(/Secondary Phone/)
    expect(rendered).to match(/Secondary Email/)
    expect(rendered).to match(/Payment Details/)
  end
end
