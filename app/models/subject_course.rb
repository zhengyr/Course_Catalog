class SubjectCourse < ActiveRecord::Base
  validates :course_name, :subject_name, :course_id, :subject_id, presence: true
  belongs_to :subject
  belongs_to :course
  def self.search(search)
    if search
      where("course_name LIKE ?", "%#{search}%")
    else
      self.all
    end
  end
end
