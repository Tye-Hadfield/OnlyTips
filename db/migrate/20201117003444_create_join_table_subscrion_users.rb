class CreateJoinTableSubscrionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_users, id: false do |t|
      t.references :user, null: false, foreign_key: true, index: false
      t.references :subscription, null: false, foreign_key: { to_table: :users }, index: false
      t.index [:user_id, :subscription_id], unique: true

      # t.index [:subscription_id, :user_id]
      # t.index [:user_id, :subscription_id]
    end
  end
end
