class CreateCaregivers < ActiveRecord::Migration[5.2]
  def change
    create_table :caregivers do |t|
      t.string :name
    end
  end
end
