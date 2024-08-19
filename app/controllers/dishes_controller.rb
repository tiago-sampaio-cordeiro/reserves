class DishesController < ApplicationController

  before_action :set_dish, only: %i[show edit update destroy]
  def index
    @dishes = Dish.order(id: :asc)
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      render json: @dish, status: :created
    else
      render json: @dish.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      render json: @dish , status: :ok
    else
      render json: @dish.errors, status: :unprocessable_entity
    end
  end

  def destroy
   @dish.destroy!
   head :no_content
  end

  private
  def set_dish
    @dish = Dish.find(params[:id])
  end
  def dish_params
    params.require(:dish).permit(:dish_name, :price)
  end
end


