class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: %i[show edit update destroy]
  def index
    @motorcycles = Motorcycle.order(id: :asc)
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    motorcycle = Motorcycle.create!(motorcycle_params)
    redirect_to motorcycle
  end

  def show
  end

  def edit
  end

  def update
    @motorcycle.update(motorcycle_params)
    redirect_to root_path
  end

  def destroy
    @motorcycle.destroy!
    redirect_to root_path
  end


  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
  private
  def motorcycle_params
    params.require(:motorcycle).permit(:name,:displacement,:car_type,:content)
  end
end
