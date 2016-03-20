class Course < ActiveRecord::Base
  #validation for courses
  validates :name, presence: true
  has_many :enrollments
  has_many :users, through: :enrollments
  has_many :subject_courses
  has_many :subjects, through: :subject_courses
end
