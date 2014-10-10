class CreatePatientProfiles < ActiveRecord::Migration
  def change
    create_table :patient_profiles do |t|
      t.string :userid
      t.string :firstname
      t.string :lastname
      t.string :pcprequest
      t.text :profilepic, limit: 16777215
      t.string :zipcode
      t.integer :docpref1
      t.integer :docpref2
      t.integer :doctpref3

      t.timestamps
    end
  end
end
