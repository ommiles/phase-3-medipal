class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.integer :activity_frequency
    end
  end
end
