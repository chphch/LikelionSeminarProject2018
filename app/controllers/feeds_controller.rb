class FeedsController < ApplicationController
  def index
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
end
