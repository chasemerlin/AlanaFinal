class CreateHospitalBedsizes < ActiveRecord::Migration
  def change
    create_table :hospital_bedsizes do |t|
      t.string :hospital_name
      t.string :city
      t.string :state
      t.integer :staffed_beds
      t.integer :total_discharges
      t.integer :patient_days
      t.integer :gross_patient_revenue

      t.timestamps null: false
    end
  end
end
