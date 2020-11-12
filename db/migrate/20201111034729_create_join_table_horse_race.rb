class CreateJoinTableHorseRace < ActiveRecord::Migration[6.0]
  def change
    create_join_table :horses, :races do |t|
      t.index [:horse_id, :race_id]
      t.index [:race_id, :horse_id]
    end
  end
end
