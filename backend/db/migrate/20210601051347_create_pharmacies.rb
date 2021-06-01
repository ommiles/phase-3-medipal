class CreatePharmacies < ActiveRecord::Migration[5.2]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.integer :pharmacy_phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postcode
    end
  end
end
