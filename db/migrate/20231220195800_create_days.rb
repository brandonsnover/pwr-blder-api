class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.string :name
      t.integer :program_id

      t.timestamps
    end
  end
end
