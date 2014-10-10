class RenamePatientProfilesUserId < ActiveRecord::Migration
  def change
    rename_column :patient_profiles, :user_id, :userid
  end
end
