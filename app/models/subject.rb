class Subject < ActiveRecord::Base
  #validation for subject
  validates :name, :subject_id, presence: true
  has_many :subject_courses
  has_many :courses, through: :subject_courses
end
