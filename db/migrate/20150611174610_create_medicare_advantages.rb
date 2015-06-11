class CreateMedicareAdvantages < ActiveRecord::Migration
  def change
    create_table :medicare_advantages do |t|
      t.string :state
      t.string :state_abbreviation
      t.string :organization_name
      t.integer :enrolled
      t.integer :total_state_ma_enrollment
      t.float :market_share_in_state

      t.timestamps null: false
    end
  end
end
