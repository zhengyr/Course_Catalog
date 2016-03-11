class Course < ActiveRecord::Base
  #validation for courses
  validates :name, presence: true
end
