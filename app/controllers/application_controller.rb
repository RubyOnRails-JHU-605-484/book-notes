class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_login

  protected

  def ensure_login
    redirect_to login_path unless session[:user_id]
  end

  def logged_in?
    session[:user_id]
  end
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user
end

