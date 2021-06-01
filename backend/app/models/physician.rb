class Physician < ActiveRecord::Base

    has_many :appointments
    has_many :pharmacies
    has_many :prescriptions, through: :pharmacies
    has_many :users
end