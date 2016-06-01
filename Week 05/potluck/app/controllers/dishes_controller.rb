class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.event_id = params[:event_id]
    if @dish
      @dish.save
    end
    redirect_to event_path(params[:event_id])
  end

  def edit
    @event = Event.find(params[:event_id])
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.event_id = params[:event_id]
    @dish.update(dish_params)
    redirect_to event_dish_path(params[:event_id], params[:id])
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to event_path(params[:event_id])
  end

  private
  def dish_params
   params.require(:dish).permit(:name, :type_of_dish, :main_ingredient, :serving_size, :event_id)
 end
end
