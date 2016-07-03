class Review < ActiveRecord::Base
  validates :rating, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :drink_id, presence: true
  validates :shop_id, presence: true

  belongs_to :drink
  belongs_to :user
  has_one :shop, :through => :drink
end
