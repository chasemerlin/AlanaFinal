class CreateHospitalGenerals < ActiveRecord::Migration
  def change
    create_table :hospital_generals do |t|
      t.string :provider_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.string :phone
      t.string :hospital_type
      t.string :ownership
      t.string :emergency

      t.timestamps null: false
    end
  end
end
