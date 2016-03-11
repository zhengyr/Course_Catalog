class InstructorsController < ApplicationController
  #This method will return all the insructor information
  def index
    @instructors = Instructor.all
  end
end
