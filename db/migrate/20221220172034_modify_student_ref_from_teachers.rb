class ModifyStudentRefFromTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key 'students', 'teachers'
    add_foreign_key 'students', 'teachers', on_delete: :cascade
  end
end
