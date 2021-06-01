class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postcode
    end
  end
end
