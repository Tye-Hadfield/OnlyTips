class Tip < ApplicationRecord
  belongs_to :race
  belongs_to :user
  belongs_to :race_course
  belongs_to :horse
end
