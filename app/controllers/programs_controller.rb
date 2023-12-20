class ProgramsController < ApplicationController
  def index
    @programs = Program.all
    render :index
  end

  def show
    @program = Program.find_by(id: params[:id])
    render :show
  end

  def create
    @program = Program.create(
      name: params[:name],
    )
    render :show
  end

  def update
    @program = Program.find_by(id: params[:id])
    @program.update(
      name: params[:name] || @program.name,
    )
    render :show
  end

  def destroy
    @program = Program.find_by(id: params[:id])
    @program.destroy
    render json: { message: "Program Deleted" }
  end
end
