class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_many :reviews
  has_secure_password

  def self.authenticate(username, password)
    @user = User.find_by(username: username)
    if @user.password == password
      return @user
    else
      nil
    end
  end
end
