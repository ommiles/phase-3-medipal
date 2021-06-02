class Appointment < ActiveRecord::Base

    belongs_to :patient
    belongs_to :physician
    has_many :appointments_prescriptions
    has_many :prescriptions, through: :appointments_prescriptions
end