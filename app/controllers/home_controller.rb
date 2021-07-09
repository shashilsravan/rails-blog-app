class HomeController < ApplicationController
  
  def index
    if logged_in?
      following_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
      @microposts =  Micropost.where("user_id IN (#{following_ids}) OR user_id = :user_id", 
      user_id: current_user.id).paginate(page: params[:page], per_page: 12)
    end
  end

  def about
  end

  def contact
  end
end
