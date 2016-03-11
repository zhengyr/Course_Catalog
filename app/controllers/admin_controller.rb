class AdminController < ApplicationController
  #This method will return the current user's information
  def index
    @user = User.find(session[:user_id])
  end
end
