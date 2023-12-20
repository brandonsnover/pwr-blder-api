class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def create
    @exercise = Exercise.create(
      name: params[:name],
      volume: params[:volume],
      short_description: params[:short_description],
      long_description: params[:long_description],
      img_url: params[:img_url],
    )
    render :show
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      name: params[:name] || @exercise.name,
      volume: params[:volume] || @exercise.volume,
      short_description: params[:short_description] || @exercise.short_description,
      long_description: params[:long_description] || @exercise.long_description,
      img_url: params[:img_url] || @exercise.img_url,
    )
    render :show
  end

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render json: { message: "Exercise Deleted" }
  end
end
