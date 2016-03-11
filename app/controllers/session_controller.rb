class SessionController < ApplicationController
  skip_before_action :authorize
  def new
  end
  #This method will create a session for the user who is logging in
  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Please enter a valid username/password"
    end
  end
  #This method is used when the user is logging out
  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out"
  end
end
