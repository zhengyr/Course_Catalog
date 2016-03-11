class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :subject_id
      t.integer :subject_segment
      t.integer :credits
      t.string :description
      t.string :requirements

      t.timestamps null: false
    end
  end
end
