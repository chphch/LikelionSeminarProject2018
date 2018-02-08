class FollowsController < ApplicationController
  def create
    receiver = User.find(params[:followed_id])
    current_user.request_follow(receiver)

    # 다른 page에서도 follow 쓰려면
    # redirect_back(fallback_location: root_path)과 같이 변경
    redirect_to controller: 'feeds', action: 'index'
  end
end
