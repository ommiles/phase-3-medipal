class DoctorsOffice < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors_office do |t|
      t.integer :physician_id
      t.integer :user_id
    end
  end
end
