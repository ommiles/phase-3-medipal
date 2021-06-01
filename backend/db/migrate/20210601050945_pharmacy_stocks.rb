class PharmacyStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :pharmacy_stocks do |t|
      t.integer :pharmacy_id
      t.integer :prescription_id
    end
  end
end
