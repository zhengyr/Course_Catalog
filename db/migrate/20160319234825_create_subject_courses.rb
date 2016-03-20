class CreateSubjectCourses < ActiveRecord::Migration
  def change
    create_table :subject_courses do |t|
      t.references :subject
      t.references :course
      t.string :course_name
      t.string :subject_name

      t.timestamps null: false
    end
  end
end
