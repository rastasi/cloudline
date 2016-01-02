class SitesController < ApplicationController

  def index
    load_sites
  end

  def show
    load_site
  end

  def check
    load_site
    flash[:alert] = 'message.site_checked'.t
    redirect_to site_path @site
  end

  private

  def load_site
    @site = Site.find(params[:id])
  end

  def load_sites
    @sites = Site.all
  end

end
