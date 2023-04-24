class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :hospital_doctors
  has_many :hospital, through: :hospital_doctors
  has_many :doctor_patients
  has_many :patients, through: :doctor_patients
end
