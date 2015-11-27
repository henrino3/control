class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

   def current_user
    @current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end 	
