class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :volume
      t.string :short_description
      t.string :long_description
      t.string :img_url

      t.timestamps
    end
  end
end
