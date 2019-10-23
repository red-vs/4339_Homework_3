class Patient < ApplicationRecord

    has_and_belongs_to_many :physicians
    has_many :appointments
    has_many :physicians, through: :appointment
end
