class PatientProfile < ActiveRecord::Base
  belongs_to :doctor_profiles
end
