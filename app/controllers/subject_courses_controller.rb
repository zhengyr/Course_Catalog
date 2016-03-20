class SubjectCoursesController < ApplicationController
  def index

  end

  def result
    @sub_cors = SubjectCourse.search(params[:search])
  end

end
