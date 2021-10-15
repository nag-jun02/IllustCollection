class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.all
  end

  def show
    @illust = Illust.find_by(id: params[:id])
    @user = User.find_by(id: @illust.user_id)
    @illusts = @user.illusts.page(params[:page]).per(20).order('created_at DESC')
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
        redirect_to user_path(current_user), alert: "不正なアクセスです。"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :avatar, :image)
  end
end
