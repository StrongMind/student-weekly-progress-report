class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.datetime :last_login
      t.text :course, array: true, default: []




      t.timestamps
    end
  end
end
