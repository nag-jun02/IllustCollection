class Illust < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :avatar, AvatarUploader
 
 
  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
