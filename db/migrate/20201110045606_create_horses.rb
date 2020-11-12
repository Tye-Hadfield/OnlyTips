class CreateHorses < ActiveRecord::Migration[6.0]
  def change
    create_table :horses do |t|
      t.string :horse_name
      t.integer :horse_number
      t.string :jockey
      t.string :trainer
      t.integer :current_win
      t.integer :current_places

      t.timestamps
    end
  end
end
