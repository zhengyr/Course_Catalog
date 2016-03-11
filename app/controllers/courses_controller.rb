class CoursesController < ApplicationController
  #This method will return all the course information
  def index
    @courses = Course.all
  end
end
