class Patient < ActiveRecord::Base

    has_many :activities
    has_many :appointments
    has_many :physicians, through: :appointments
end