# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscriber do
    first_name "MyString"
    last_name "MyString"
    account_number "MyString"
    property_address "MyString"
    property_city "MyString"
    property_state "MyString"
    property_zip "MyString"
    subscription_size "MyString"
    email "MyString"
    phone "MyString"
    secondary_contact "MyString"
    secondary_phone "MyString"
    secondary_email "MyString"
    payment_details "MyString"
  end
end
