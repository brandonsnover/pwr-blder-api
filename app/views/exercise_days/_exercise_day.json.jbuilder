  json.id exercise_day.id
  json.day exercise_day.day
  json.exercise exercise_day.exercise, partial: "exercises/exercise", as: :exercise
  json.created_at exercise_day.created_at
  json.updated_at exercise_day.updated_at
