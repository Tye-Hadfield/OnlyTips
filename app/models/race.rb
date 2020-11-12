class Race < ApplicationRecord
  belongs_to :race_course
  # has_and_belongs_to_many :race_courses, :join_table => :race_courses_races
  has_and_belongs_to_many :horses, :join_table => :horses_races
end
