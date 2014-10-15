class RemoveFieldFromDoctorProfiles < ActiveRecord::Migration
  def change
    remove_column :doctor_profiles, :decimal, :decimal
  end
end
