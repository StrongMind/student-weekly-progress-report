class AddTeacherToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :teacher, foreign_key: true
  end
end
