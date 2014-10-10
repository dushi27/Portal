class Practice < ActiveRecord::Base
  has_many :doctor_profiles, foreign_key: "orgid"
  has_many :patient_profiles, through: :doctor_profiles
end
