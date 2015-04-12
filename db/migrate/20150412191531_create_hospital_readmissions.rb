class CreateHospitalReadmissions < ActiveRecord::Migration
  def change
    create_table :hospital_readmissions do |t|
      t.string :provider_id
      t.string :hospital_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :county_name
      t.string :phone_number
      t.string :measure_name
      t.string :measure_id
      t.string :compared_to_national
      t.integer :denominator
      t.float :score
      t.float :lower_estimate
      t.float :higher_estimate
      t.string :footnote
      t.string :measure_start_date
      t.string :measure_end_date

      t.timestamps null: false
    end
  end
end
