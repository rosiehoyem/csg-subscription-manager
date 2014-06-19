json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :first_name, :last_name, :account_number, :property_address, :property_city, :property_state, :property_zip, :subscription_size, :email, :phone, :secondary_contact, :secondary_phone, :secondary_email, :payment_details
  json.url subscriber_url(subscriber, format: :json)
end
