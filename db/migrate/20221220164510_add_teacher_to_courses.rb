class AddTeacherToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :teacher, null: true, foreign_key: true
  end
end
