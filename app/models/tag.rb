class Tag < ApplicationRecord
  has_many :exercise_tags
  has_many :exercises, through: :exercise_tags
end
