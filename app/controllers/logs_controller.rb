class LogsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :load_site

  def recent
  end

  def index
    load_logs
  end

  def show
    load_log
  end

  private

  def load_logs
    @logs = @site.logs
  end

  def load_log
    @log = Log.find(params[:id])
  end

  def load_site
    @site = Site.find(params[:site_id])
  end

end
