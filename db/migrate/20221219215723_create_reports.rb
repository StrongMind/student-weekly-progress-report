class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.datetime :date
      t.text :comments

      t.timestamps
    end
  end
end
