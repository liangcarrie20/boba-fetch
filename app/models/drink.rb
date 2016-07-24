class Drink < ActiveRecord::Base

  belongs_to :shop
  has_many :reviews
  has_many :uploads

  validates :name, uniqueness: {scope: :shop_id}
  validates :shop_id, presence: true

  before_save do
    self.name = self.name.downcase
  end
end
