class CreateRaceCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :race_courses do |t|
      t.string :race_course_name
      t.string :address

      t.timestamps
    end
  end
end
