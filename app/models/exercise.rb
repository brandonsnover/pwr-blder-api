class Exercise < ApplicationRecord
  has_many :exercise_days
  has_many :days, through: :exercise_days
  has_many :exercise_tags
  has_many :tags, through: :exercise_tags
end
