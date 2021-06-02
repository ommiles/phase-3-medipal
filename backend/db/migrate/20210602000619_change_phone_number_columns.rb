class ChangePhoneNumberColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :pharmacies, :pharmacy_phone_number, :string
    change_column :physicians, :physician_phone_number, :string
  end
end
