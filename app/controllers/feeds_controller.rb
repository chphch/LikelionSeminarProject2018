class FeedsController < ApplicationController
  before_action :authenticate_user!
  def index
    # 단순하게 Feed.all로 부르면 1:N으로 연계된 모델들을 뷰에서 부를 때
    # 새로 각각의 쿼리를 만드는 N+1 query problem 이 있음
    # 이를 해결하기 위해서는 아래와 같이 includes를 이용해서 eager loading
    # @feeds = Feed.all
    @feeds = Feed.includes(:feed_likes, :liking_users, user: [:followers],
                           feed_comments: [:user]).all
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
    feed.user_id = current_user.id
    feed.save

    redirect_to action: 'index'
  end

  def destroy
    feed_id = params[:id]
    Feed.destroy(feed_id)

    redirect_to action: 'index'
  end

  def create_comment
    feed_id = params[:id]
    content = params[:content]

    feed = Feed.find(feed_id)
    new_comment = feed.feed_comments.new
    new_comment.content = content
    new_comment.user_id = current_user.id 
    new_comment.save
=begin
동일한 일을 하는 코드
    new_comment = FeedComment.new
    new_comment.feed_id = feed_id
    new_comment.content = content
    new_comment.save
=end

    redirect_to action: 'index'
  end

  def destroy_comment
    comment_id = params[:comment_id]
    FeedComment.destroy(comment_id)

    redirect_to action: 'index'
  end

  def like
    feed_like_hash = {user_id: current_user.id, feed_id: params[:id]}
    # 아래 두 코드는 같음
    # like = FeedLike.where(user_kd: current_user.id, feed_id: params[:id])
    like = FeedLike.where(feed_like_hash)
    if like.empty?
      FeedLike.create(feed_like_hash)
    else
      like.destroy_all
    end

    redirect_to action: 'index'
  end
end
