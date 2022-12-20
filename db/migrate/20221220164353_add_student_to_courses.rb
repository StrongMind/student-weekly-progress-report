class AddStudentToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :student, foreign_key: true
  end
end
