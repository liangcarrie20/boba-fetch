class User < ActiveRecord::Base
  include BCrypt

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  
  has_secure_password

  before_save do
    self.username = self.username.downcase
    self.email = self.email.downcase
  end

  has_many :reviews
end