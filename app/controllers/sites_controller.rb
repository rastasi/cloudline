class SitesController < ApplicationController

  def index
    load_sites
  end

  def show
    load_site
  end

  def new
  end

  def create
    @site = Site.create!(permitted_params)
    if @site
      redirect_to site_path(@site)
    else
      redirect_to new_site_path()
    end
  end

  def edit
    load_site
  end

  def update
    load_site
    if @site.update_attributes(permitted_params)
      redirect_to site_path(@site)
    else
      redirect_to edit_site_path(@site)
    end
  end

  def destroy
    load_site
    @site.destroy
    redirect_to sites_path
  end

  def check
    load_site
    ::CheckProcess.new(@site)
    flash[:alert] = 'message.site_checked'.t
    redirect_to site_path @site
  end

  private

  def permitted_params
    params.require(:site).permit(:name, :description, :url, :protocol, :http_method, :active)
  end

  def load_site
    @site = Site.find(params[:id])
  end

  def load_sites
    @sites = Site.all
  end

end
