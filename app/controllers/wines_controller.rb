class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create 
    wine = Wine.create wine_params
    redirect_to wine
  end

  def edit
    @wine = Wine.find params[:id]
  end

  def update
    wine = Wine.find params[:id]
    wine.update wine_params
    redirect_to wine
  end

  def show
    @wine = Wine.find params[:id]
  end

  def destroy
    wine = Wine.find params[:id]
    wine.destroy 
    redirect_to wines_path
  end


private 
  def wine_params
    params.require(:wine).permit(:name, :region, :varietal, :image_URL, :dish_id)
  end
end
