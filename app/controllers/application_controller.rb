class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :this_user
  def this_user
      @this_user ||= User.find(session[:user_id])
  end

  protected
    #This method will ask the user to log in
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
end
