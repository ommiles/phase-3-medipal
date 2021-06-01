class Prescribed < ActiveRecord::Migration[5.2]
  def change
    create_table :prescribed do |t|
      t.integer :user_id
      t.integer :prescription_id
      t.integer :physician_id
    end
  end
end
