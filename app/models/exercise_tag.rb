class ExerciseTag < ApplicationRecord
  belongs_to :tag
  belongs_to :exercise
end
