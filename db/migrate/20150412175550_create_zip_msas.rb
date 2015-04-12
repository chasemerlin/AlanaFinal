class CreateZipMsas < ActiveRecord::Migration
  def change
    create_table :zip_msas do |t|
      t.string :zip_code
      t.string :state_abbreviation
      t.string :msa_number
      t.float :gpci_one
      t.float :gpci_two
      t.float :gpci_three
      t.string :county_number
      t.string :msa_name
      t.integer :zip_population
      t.integer :msa_population

      t.timestamps null: false
    end
  end
end
