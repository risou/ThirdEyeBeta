class BaseController < ApplicationController
  protect_from_forgery

  def login_required
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect_to :controller => 'home', :action => 'login'
    end
  end

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
