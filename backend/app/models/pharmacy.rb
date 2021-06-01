class Pharmacy < ActiveRecord::Base

    has_many :prescriptions
end