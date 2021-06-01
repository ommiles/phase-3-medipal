class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :physician_id
      t.integer :user_id
      t.string :appointment_date
      t.timestamps
    end
  end
end
