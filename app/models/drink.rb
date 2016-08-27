class Drink < ActiveRecord::Base


  validates :name, uniqueness: {scope: :shop_id}
  validates :shop_id, presence: true

  before_save do
    self.name = self.name.downcase
  end

  belongs_to :shop
  has_many :reviews
  has_many :uploads
end
