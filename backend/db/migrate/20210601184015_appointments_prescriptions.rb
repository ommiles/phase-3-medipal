class AppointmentsPrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments_prescriptions do |t|
      t.integer :appointment_id
      t.integer :prescription_id
    end
  end
end
