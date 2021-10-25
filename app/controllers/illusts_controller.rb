class IllustsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @illusts = Illust.order(created_at: :desc).limit(21)
  end

  def show
    # @User = User.find(params[:id])
    @illust = Illust.find_by(id: params[:id])
    @user = User.find_by(id: @illust.user_id)
    @illusts = @user.illusts.page(params[:page]).per(6).order('created_at DESC')
  end

  def new
    @illust = Illust.new
  end

  def create
    @illust = current_user.illusts.build(illust_params)
    if @illust.save
      redirect_to illust_path(@illust), notice: "作品を投稿しました。"
    else
      render :new
    end
  end

  def edit
    @illust = Illust.find_by(id: params[:id])
    if @illust.user != current_user
        redirect_to illustes_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @illust = Illust.find(params[:id])
    if @illust.update(illust_params)
      redirect_to illust_path(@illust), notice: "作品情報を更新しました。"
    else
      render :edit
    end
  end
  def destroy
    illust = Illust.find(params[:id])
    illust.destroy
    redirect_to user_path(illust.user), notice: "作品を削除しました。"
  end



  private
  def illust_params
    params.require(:illust).permit(:title, :body, :image, :avatar)
  end
end
