class Physician < ApplicationRecord
    has_and_belongs_to_many :patients
    has_many :offices
    has_many :appointments
    has_many :patients, through: :appointments

    accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true
end
