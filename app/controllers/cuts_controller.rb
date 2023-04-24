class CutsController < ApplicationController
  def index
    @cuts = Cut.all
  end

  def new
    @cut = Cut.new
  end

  def create
    cut = Cut.create cut_params
    redirect_to cut
  end

  def edit
    @cut = Cut.find params[:id]
  end

  def update
    cut = Cut.find params[:id]
    cut.update cut_params
    redirect_to cut
  end

  def show
    @cut = Cut.find params[:id]
  end

  def destroy 
    cut = Cut.find params[:id]
    cut.destroy
    redirect_to cuts_path
  end

  private
  def artist_params
    params.require(:cut).permit(:name, :loction, :alternative_name, :characteristics, :dish_id, :image)
  end
end