class Shop < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates_length_of :zip, :is => 5

  before_save { |shop| shop.name = shop.name.split.map(&:capitalize).join(' ') }
  before_save { |shop| shop.address = shop.address.split.map(&:capitalize).join(' ') }
  before_save { |shop| shop.city = shop.city.split.map(&:capitalize).join(' ') }

  has_many :reviews
  has_many :drinks
end
