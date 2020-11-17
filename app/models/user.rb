class User < ApplicationRecord
   has_many :tips
   has_and_belongs_to_many :subscriptions,
      join_table: :subscription_users,
      class_name: "User",
      association_foreign_key: 'subscription_id'

   rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
   def assign_default_role
      self.add_role(:user)
   end

   def admin?
      has_role?(:admin)
    end

end
