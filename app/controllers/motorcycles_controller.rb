class MotorcyclesController < ApplicationController
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
    @motorcycle = Motorcycle.find(params[:id])
  end

  def edit
    @motorcycle = Motorcycle.find(params[:id])
  end

  def update
    motorcycle = Motorcycle.find(params[:id])
    motorcycle.update(motorcycle_params)
    redirect_to root_path
  end

  def destroy
    motorcycle = Motorcycle.find(params[:id])    
    motorcycle.destroy!
    redirect_to root_path
  end

  private
  def motorcycle_params
    params.require(:motorcycle).permit(:name,:displacement,:car_type,:content)
  end
end
