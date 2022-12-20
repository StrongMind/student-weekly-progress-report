class ChangeAssignmentToMissingAssignment < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :assignments, :missing_assignments
  end
end
