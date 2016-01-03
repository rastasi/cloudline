class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_language

  def index
    redirect_to sites_path if current_user
  end

  def set_language
    I18n.locale = cookies[:lang]
  end

  def change_language
    I18n.locale = params[:code]
    cookies[:lang] = params[:code]
    if request.referer
      redirect_to request.referer
    else
      redirect_to frontpage_path
    end
  end

  def check_ownership
    redirect_to error_403_path if @site.user != current_user
  end

end
