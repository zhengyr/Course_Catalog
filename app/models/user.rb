class User < ActiveRecord::Base
  #validation for users and encoded password for users
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
