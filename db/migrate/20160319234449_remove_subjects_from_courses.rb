class RemoveSubjectsFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :subject_segment
    remove_column :courses, :subject_id
  end
end
