class Horse < ApplicationRecord
    has_and_belongs_to_many :races, :join_table => :horses_races
    has_many :tips, through: :races
end
