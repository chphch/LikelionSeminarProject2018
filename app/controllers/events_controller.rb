class EventsController < ApplicationController
  def index
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    date = params[:date]
    title = params[:title]

    event = Event.new
    event.date = date
    event.title = title
    event.save

    redirect_to action: 'index'
  end
end
