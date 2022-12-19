class AddStudentToReports < ActiveRecord::Migration[7.0]
  def change
    add_reference :reports, :student, foreign_key: true
  end
end
