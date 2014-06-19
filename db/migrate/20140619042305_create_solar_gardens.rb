class CreateSolarGardens < ActiveRecord::Migration
  def change
    create_table :solar_gardens do |t|
      t.string :size
      t.string :address
      t.string :city
      t.string :zip
      t.string :operator
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
