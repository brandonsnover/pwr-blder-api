class DaysController < ApplicationController
  def index
    @days = Day.all
    render :index
  end

  def show
    @day = Day.find_by(id: params[:id])
    render :show
  end

  def create
    @day = Day.create(
      name: params[:name],
      program_id: params[:program_id],
    )
    render :show
  end

  def update
    @day = Day.find_by(id: params[:id])
    @day.update(
      name: params[:name] || @day.name,
      program_id: params[:program_id] || @day.program_id,
    )
    render :show
  end

  def destroy
    @day = Day.find_by(id: params[:id])
    @day.destroy
    render json: { message: "Day Deleted" }
  end
end
