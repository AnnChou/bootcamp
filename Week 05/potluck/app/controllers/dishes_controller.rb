class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    @event = Event.find(@dish.event_id)
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.create(dish_params)
    redirect_to event_path(@dish.event_id)
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.update(dish_params)
    redirect_to dish_path(params[:id])
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to events_path
  end

  private
  def dish_params
   params.require(:dish).permit(:name, :type_of_dish, :main_ingredient, :serving_size, :event_id)
 end
end
