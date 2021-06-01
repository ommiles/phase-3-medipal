class AppointmentsPrescription < ActiveRecord::Base

    belongs_to :appointment
    belongs_to :prescription
end