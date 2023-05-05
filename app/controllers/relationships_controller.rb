class RelationshipsController < ApplicationController
  def create

   current_user.follow(params[:user_id])
	 redirect_to request.referer
  end

  def destroy

	    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end


def follow
    user = User.find(params[:user_id])
    @users = user.followings
end

def follower
    user = User.find(params[:user_id])
    @users = user.followers
end
private
  def set_user
    @user = User.find(params[:id])
  end
end

