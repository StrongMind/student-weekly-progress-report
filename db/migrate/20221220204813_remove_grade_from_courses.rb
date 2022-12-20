class RemoveGradeFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :grade, :float
  end
end
