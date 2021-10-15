class HomesController < ApplicationController
  def top
    @illusts = Illust.order(created_at: :desc).limit(21)
    @Illusts = Illust.order(created_at: :desc).limit(15)
  end
end
