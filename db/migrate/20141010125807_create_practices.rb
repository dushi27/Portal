class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name
      t.string :speciality
      t.string :address_1
      t.string :address_2
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
