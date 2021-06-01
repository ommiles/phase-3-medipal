class CaregiversPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :caregivers_patients do |t|
      t.integer :caregiver_id
      t.integer :patient_id
    end
  end
end
