class User < ActiveRecord::Base

    has_many :activities
    has_many :appointments
    has_many :caregivers
    has_many :pharmacies
    has_many :prescriptions, through: :pharmacies
    has_many :physicians
end