class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :edit]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @dishes = Dish.where(:event_id => params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to event_path(@event.id), :notice => "New event created"
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event.id)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
  def event_params
   params.require(:event).permit(:name, :date, :start_time, :end_time, :address, :phone, :user_id)
 end
end
