class SitesController < ApplicationController

  def index
    load_sites
  end

  def show
    load_site
  end
  
  private

  def load_site
    @site = Site.find(params[:id])
  end

  def load_sites
    @sites = Site.all
  end

end
