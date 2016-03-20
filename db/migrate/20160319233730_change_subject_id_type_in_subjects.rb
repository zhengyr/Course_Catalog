class ChangeSubjectIdTypeInSubjects < ActiveRecord::Migration
  def change
    change_column(:subjects, :subject_id, :integer)
  end
end
