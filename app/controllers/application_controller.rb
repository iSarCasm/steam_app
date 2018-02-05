class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    session[:current_user]
  end
  helper_method :current_user

  def set_current_user(user)
    session[:current_user] = user
  end
end
