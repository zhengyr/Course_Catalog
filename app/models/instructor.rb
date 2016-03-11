class Instructor < ActiveRecord::Base
  #validation for instructor
  validates :first_name, :last_name, presence: true
end
