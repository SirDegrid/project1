class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create 
    dish = Dish.create dish_params
    redirect_to dish
  end

  def edit
    @dish = Dish.find params[:id]
  end

  def update
    dish = Dish.find params[:id]
    dish.update dish_params
    redirect_to dish
  end

  def show
    @dish = Dish.find params[:id]
  end

  def destroy
    dish = Dish.find params[:id]
    dish.destroy 
    redirect_to dishes_path
  end


private 
  def dish_params
    params.require(:dish).permit(:name, :cuisine, :recipe_URL, :image_URL, :cut_id, :wine_ids => [])
  end
end

