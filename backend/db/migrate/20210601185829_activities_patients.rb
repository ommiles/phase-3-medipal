class ActivitiesPatients < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_patients do |t|
      t.integer :activity_id
      t.integer :patient_id
      t.integer :activity_points
    end
  end
end
