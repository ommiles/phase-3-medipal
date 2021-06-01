class ChangeUserToPatients < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :user_id, :patient_id
  end
end
