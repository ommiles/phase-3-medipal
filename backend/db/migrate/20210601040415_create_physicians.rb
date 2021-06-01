class CreatePhysicians < ActiveRecord::Migration[5.2]
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.integer :physician_phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postcode
    end
  end
end
