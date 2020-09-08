class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: %i[show edit update destroy]
  
  def index
    @motorcycles = Motorcycle.order(id: :asc)
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      redirect_to @motorcycle,notice:"投稿しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @motorcycle.update(motorcycle_params)
    redirect_to root_path, notice: "更新しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :edit
    end
  end

  def destroy
    @motorcycle.destroy!
    redirect_to root_path, alert: "削除しました"
  end

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
  private
  def motorcycle_params
    params.require(:motorcycle).permit(:name,:displacement,:car_type,:content)
  end
end
