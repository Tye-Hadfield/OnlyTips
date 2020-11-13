class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.references :race, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :race_course, null: false, foreign_key: true
      t.references :horse, null: false, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
