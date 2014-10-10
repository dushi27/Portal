class DoctorProfile < ActiveRecord::Base
  validate :orgid, presence: true
end
