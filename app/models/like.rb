class Like < ApplicationRecord
  belongs_to :illust
  belongs_to :user

  validates_uniqueness_of :illust_id, scope: :user_id
end
