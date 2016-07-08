class DishesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :edit]

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
    @dish = Dish.new(dish_params)
    @dish.user_id = current_user.id
    if @dish.save
      redirect_to event_path(@dish.event_id), :notice => "Dish added to the event"
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.user_id = current_user.id
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
   params.require(:dish).permit(:name, :type_of_dish, :main_ingredient, :serving_size, :event_id, :user_id)
 end
end
