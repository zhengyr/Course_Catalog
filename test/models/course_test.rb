require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  def course
    @course ||= Course.new
  end
  it "has two courses in database" do
    Course.count.must_equal 2
  end
  it "can accept a new course" do
    Course.create(name: "G3")
    Course.count.must_equal 3
  end
  it "cannot save a course without the a name" do
    w = Course.create()
    w.valid?.must_equal false
  end

end
