class ExerciseDaysController < ApplicationController
  def index
    @exercise_days = ExerciseDay.all
    render :index
  end

  def show
    @day = ExerciseDay.find_by(id: params[:id])
    render :show
  end

  def create
    @exercise_day = ExerciseDay.create(
      exercise_id: params[:exercise_id],
      day_id: params[:day_id],
    )
    render :show
  end

  def update
    @exercise_day = ExerciseDay.find_by(id: params[:id])
    @exercise_day.update(
      exercise_id: params[:exercise_id] || @exercise_day.exercise_id,
      day_id: params[:day_id] || @exercise_day.day_id,
    )
    render :show
  end

  def destroy
    @exercise_day = ExerciseDay.find_by(id: params[:id])
    @exercise_day.destroy
    render json: { message: "ExerciseDay Deleted" }
  end
end
