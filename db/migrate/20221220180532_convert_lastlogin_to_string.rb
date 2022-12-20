class ConvertLastloginToString < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :last_login, :string
  end
end
