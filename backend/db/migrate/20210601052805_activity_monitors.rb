class ActivityMonitors < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_monitors do |t|
      t.integer :activity_id
      t.integer :user_id
      t.integer :activity_points
    end
  end
end
