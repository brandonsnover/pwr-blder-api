class CreateExerciseTags < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_tags do |t|
      t.integer :tag_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
