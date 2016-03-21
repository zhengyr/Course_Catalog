class SubjectCourse < ActiveRecord::Base
  validates :course_name, :subject_name, :course_id, :subject_id, presence: true
  belongs_to :subject
  belongs_to :course
  
end
