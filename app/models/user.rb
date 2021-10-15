class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader
  mount_uploader :image, ImageUploader
  has_many :illusts, dependent: :destroy
  # has_many :likes, dependent: :destroy
  validates :username, presence: true

  #既にいいねしているかどうか
  # def already_liked?(illust)
  #  self.likes.exists?(illust_id: illust.id)
  # end
end
