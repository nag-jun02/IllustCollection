class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @User = User.find(params[:following_id])
    current_user.follow(@User)
  end

  def destroy
    @User = User.find(params[:id])
    current_user.unfollow(@User)
  end

end
