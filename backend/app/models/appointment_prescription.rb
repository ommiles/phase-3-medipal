class AppointmentsPrescription < ActiveRecord::Base

    belongs_to :appointment
    belongs_to :prescription

    def find_prescriptions
        self.prescription
    end
end