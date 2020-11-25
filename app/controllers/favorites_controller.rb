class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    like = Micropost.find(params[:micropost_id])
    current_user.micropost(like)
    flash[:success] = 'お気に入りしました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    like = Micropost.find(params[:micropost_id])
    current_user.unmicropost(like)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end