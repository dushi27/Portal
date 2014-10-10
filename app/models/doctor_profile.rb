class DoctorProfile < ActiveRecord::Base
  belongs_to :practice
  has_many :patient_profiles, foreign_key: "userid"  
end
