class CaregiverDirectories < ActiveRecord::Migration[5.2]
  def change
    create_table :caregiver_directories do |t|
      t.integer :caregiver_id
      t.integer :user_id
    end
  end
end
