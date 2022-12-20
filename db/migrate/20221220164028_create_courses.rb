class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.float :grade
      t.string :letter_grade
      t.string :name

      t.timestamps
    end
  end
end
