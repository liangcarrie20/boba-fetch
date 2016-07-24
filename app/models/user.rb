class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_many :reviews
  has_secure_password

  before_save do
    self.username = self.username.downcase
    self.email = self.email.downcase
  end
end