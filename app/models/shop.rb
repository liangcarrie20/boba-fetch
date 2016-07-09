class Shop < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates_length_of :zip, :is => 5

  before_save do
    self.name = self.name.split.map(&:capitalize).join(' ')
    self.address = self.address.split.map(&:capitalize).join(' ')
    self.city = self.city.split.map(&:capitalize).join(' ')
  end

  has_many :reviews
  has_many :drinks
end
