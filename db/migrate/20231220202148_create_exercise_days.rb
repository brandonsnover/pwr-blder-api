class CreateExerciseDays < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_days do |t|
      t.integer :exercise_id
      t.integer :day_id

      t.timestamps
    end
  end
end
