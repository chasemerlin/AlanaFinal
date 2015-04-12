class CreateStateCopds < ActiveRecord::Migration
  def change
    create_table :state_copds do |t|
      t.string :state
      t.integer :respondents
      t.integer :has_copd
      t.float :percentage
      t.string :ninety_five_percent_confidence_interval
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
