class User < ActiveRecord::Base
  #validation for users and encoded password for users
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_many :enrollments
  has_many :courses, through: :enrollments
end
