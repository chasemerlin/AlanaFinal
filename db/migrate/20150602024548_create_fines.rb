class CreateFines < ActiveRecord::Migration
  def change
    create_table :fines do |t|
      t.string :hospital_name
      t.integer :staffed_beds
      t.integer :total_payments
      t.integer :copd_total
      t.decimal :copd_ratio
      t.integer :ami_total
      t.decimal :ami_ratio
      t.integer :pneumonia_total
      t.decimal :pneumonia_ratio
      t.integer :hip_knee_total
      t.decimal :hip_knee_ratio
      t.integer :hf_total
      t.decimal :hf_ratio

      t.timestamps null: false
    end
  end
end
