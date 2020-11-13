class RaceCourse < ApplicationRecord
    # has_and_belongs_to_many :races
    has_many :races
    has_many :tips, through: :races
end
