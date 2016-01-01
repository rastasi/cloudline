class SitesController < ApplicationController

  def index
    load_sites
  end

  def load_sites
    @sites = Site.all
  end

end
