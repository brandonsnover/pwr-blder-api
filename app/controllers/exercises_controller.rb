class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end
end
