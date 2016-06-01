class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @dishes = Dish.where(:event_id => params[:id])
  end
end
