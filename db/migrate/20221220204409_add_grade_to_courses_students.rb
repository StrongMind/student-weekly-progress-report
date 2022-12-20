class AddGradeToCoursesStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :courses_students, :grade, :float
  end
end
