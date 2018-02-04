class EventsController < ApplicationController
  def index
    @events = Event.all
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

  def destroy
    event_id = params[:id]
    Event.destroy(event_id)

    redirect_to action: 'index'
  end

  def create_comment
    event_id = params[:id]
    content = params[:content]

    event = Event.find(event_id)
    new_comment = event.event_comments.new
    new_comment.content = content
    new_comment.save

    redirect_to action: 'index'
  end
end
