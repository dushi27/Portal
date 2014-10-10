class CreateDoctorProfiles < ActiveRecord::Migration
  def change
    create_table :doctor_profiles do |t|
      t.string :firstname
      t.string :lastname
      t.text :about
      t.text :profilepic, :limit => 16777215
      t.string :schedule
      t.string :speciality
      t.string :title
      t.string :userid
      t.string :zipcode
      t.decimal :fee, :decimal, :precision => 8, :scale => 2      
      t.string :plan
      t.string :npi
      t.string :orgid

      t.timestamps
    end
  end
end
