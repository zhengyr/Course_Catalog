require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  def instructor
    @instructor ||= Instructor.new
  end
  it "has two instructors in database" do
    Instructor.count.must_equal 2
  end
  it "can accept a new instructor" do
    Instructor.create(first_name: "G3", last_name: "G2")
    Instructor.count.must_equal 3
  end
  it "cannot save a instructor without the a name" do
    w = Instructor.create()
    w.valid?.must_equal false
  end

end
