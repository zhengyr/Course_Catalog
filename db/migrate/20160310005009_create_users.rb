class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end

    create_table :instructors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.integer :instructor_id

      t.timestamps null: false
    end

    create_table :subjects do |t|
      t.string :name
      t.string :abbreviation
      t.integer :subject_id

      t.timestamps null: false
    end

    create_table :courses do |t|
      t.string :name
      t.string :code
      t.integer :credits
      t.string :description
      t.string :requirements

      t.timestamps null: false
    end

    create_table :enrollments do |t|
      t.references :user
      t.references :course
      t.timestamps null: false
    end

    create_table :subject_courses do |t|
      t.references :subject
      t.references :course
      t.string :course_name
      t.string :subject_name

      t.timestamps null: false
    end
  end
end
