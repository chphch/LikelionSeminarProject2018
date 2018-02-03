class FeedsController < ApplicationController
  def index
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    redirect_to action: 'index'
  end
end
