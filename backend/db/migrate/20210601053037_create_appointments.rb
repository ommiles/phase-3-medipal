class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :physician_id
      t.timestamps :appointment_date
    end
  end
end
