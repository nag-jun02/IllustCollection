class LikesController < ApplicationController
  before_action :illust_params
  def create
      like = current_user.likes.new(illust_id: @illust.id)
      like.save
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, illust_id: @illust.id).destroy
  end

  private
  def illust_params
    @illust = Illust.find(params[:illust_id])
  end
end
