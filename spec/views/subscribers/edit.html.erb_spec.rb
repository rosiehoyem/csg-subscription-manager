require 'rails_helper'

RSpec.describe "subscribers/edit", :type => :view do
  before(:each) do
    @subscriber = assign(:subscriber, Subscriber.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :account_number => "MyString",
      :property_address => "MyString",
      :property_city => "MyString",
      :property_state => "MyString",
      :property_zip => "MyString",
      :subscription_size => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :secondary_contact => "MyString",
      :secondary_phone => "MyString",
      :secondary_email => "MyString",
      :payment_details => "MyString"
    ))
  end

  it "renders the edit subscriber form" do
    render

    assert_select "form[action=?][method=?]", subscriber_path(@subscriber), "post" do

      assert_select "input#subscriber_first_name[name=?]", "subscriber[first_name]"

      assert_select "input#subscriber_last_name[name=?]", "subscriber[last_name]"

      assert_select "input#subscriber_account_number[name=?]", "subscriber[account_number]"

      assert_select "input#subscriber_property_address[name=?]", "subscriber[property_address]"

      assert_select "input#subscriber_property_city[name=?]", "subscriber[property_city]"

      assert_select "input#subscriber_property_state[name=?]", "subscriber[property_state]"

      assert_select "input#subscriber_property_zip[name=?]", "subscriber[property_zip]"

      assert_select "input#subscriber_subscription_size[name=?]", "subscriber[subscription_size]"

      assert_select "input#subscriber_email[name=?]", "subscriber[email]"

      assert_select "input#subscriber_phone[name=?]", "subscriber[phone]"

      assert_select "input#subscriber_secondary_contact[name=?]", "subscriber[secondary_contact]"

      assert_select "input#subscriber_secondary_phone[name=?]", "subscriber[secondary_phone]"

      assert_select "input#subscriber_secondary_email[name=?]", "subscriber[secondary_email]"

      assert_select "input#subscriber_payment_details[name=?]", "subscriber[payment_details]"
    end
  end
end
