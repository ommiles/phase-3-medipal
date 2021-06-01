class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    t.string :brand_name
    t.string :technical_name
    t.string :purpose
    t.string :dosage
    t.string :dosage_times
    t.string :size
    t.string :shape
    t.string :color
    t.string :side_effects
    t.integer :refill_number
  end
end
