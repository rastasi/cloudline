class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    redirect_to sites_path if current_user
  end

  def check_ownership
    redirect_to error_403_path if @site.user != current_user
  end

end
