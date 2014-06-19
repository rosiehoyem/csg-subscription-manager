class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :account_number
      t.string :property_address
      t.string :property_city
      t.string :property_state
      t.string :property_zip
      t.string :subscription_size
      t.string :email
      t.string :phone
      t.string :secondary_contact
      t.string :secondary_phone
      t.string :secondary_email
      t.string :payment_details
      t.references :solar_garden, index: true

      t.timestamps
    end
  end
end
