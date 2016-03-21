class SubjectCoursesController < ApplicationController
  def index
    @sub_names = Subject.all.uniq
  end

  def result
    @sub_cors = SubjectCourse.all
    if not params[:subject].nil?
      @sub_cors = SubjectCourse.where("subject_name LIKE ?", "%#{params[:subject]}%")
    end
    if not params[:search].nil?
      @sub_cors = @sub_cors.where("course_name LIKE ?", "%#{params[:search]}%")
    end
  end

end
