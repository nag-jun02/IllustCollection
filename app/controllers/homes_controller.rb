class HomesController < ApplicationController
  def top
    @users = User.all
    @user = User.new
    @newillusts = Illust.order(created_at: :desc).limit(21)
  end
end
