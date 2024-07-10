class DishesController < ApplicationController

  before_action :set_user, only: %i[show edit update destroy]
  def index
    @dishes = Dish.all
    render json: @dishes
  end

  def show
    render json: @dish
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.!
      redirect_to @dish
    else
      render json: @dish.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_user
    @dish = Dish.find(params[:id])
  end
  def dish_params
    params.require(:dish).permit(:dish_name, :price)
  end
end


