class AddUserIdtoProgram < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :user_id, :integer
  end
end
