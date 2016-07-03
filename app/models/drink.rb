class Drink < ActiveRecord::Base
  belongs_to :shop
  has_many :reviews

  validates :name, presence: true
  validates :shop_id, presence: true
end
