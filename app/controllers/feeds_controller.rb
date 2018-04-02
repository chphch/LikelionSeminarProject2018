class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    title = params[:title]
    content = params[:content]

    feed = Feed.new
    feed.title = title
    feed.content = content
    feed.save

    redirect_to action: 'index'
  end

  def destroy
    feed_id = params[:id]
    Feed.destroy(feed_id)

    redirect_to action: 'index'
  end

  def edit
    feed_id = params[:id]
    @feed = Feed.find(feed_id)

    render 'edit'
  end
end
