class Exercise < ApplicationRecord
  has_many :exercise_days
  has_many :days, through: :exercise_days
end
