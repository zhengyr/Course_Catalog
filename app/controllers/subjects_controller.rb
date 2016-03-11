class SubjectsController < ApplicationController
  #This method will return all the subject information
  def index
    @subjects = Subject.all
  end
end
