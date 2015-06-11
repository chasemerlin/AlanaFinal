class CreateSnifs < ActiveRecord::Migration
  def change
    create_table :snifs do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :mcr_rating
      t.integer :beds_capacity
      t.boolean :medicare
      t.boolean :medicaid
      t.float :percentage_occupied
      t.integer :beds_unavailable
      t.integer :beds_available
      t.string :in_hospital
      t.integer :population
      t.string :corporation

      t.timestamps null: false
    end
  end
end
