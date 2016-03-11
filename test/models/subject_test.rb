require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  def subject
    @subject ||= Subject.new
  end
  it "has two subjects in database" do
    Subject.count.must_equal 2
  end
  it "can accept a new subject" do
    Subject.create(name: "G3")
    Subject.count.must_equal 3
  end
  it "cannot save a subject without the a name" do
    w = Subject.create()
    w.valid?.must_equal false
  end

end
