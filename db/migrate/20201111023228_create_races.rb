class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.date :race_date
      t.references :race_course, null: false, foreign_key: true
      t.integer :race_number
      t.integer :race_length
      t.float :prize_money

      t.timestamps
    end
  end
end
