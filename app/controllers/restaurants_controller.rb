class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      respond_to do |format|
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
      end
    else
      respond_to do |format|
        format.html { render :new}
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name, :address)
  end

end
