class SitesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :load_site, :check_ownership, except: [:index, :new, :create]

  def index
    load_sites
  end

  def show
  end

  def new
  end

  def create
    @site = Site.create!(permitted_params)
    if @site
      redirect_to site_path(@site)
    else
      flash[:error] = @site.errors.full_messages.to_sentence
      redirect_to new_site_path()
    end
  end

  def edit
  end

  def update
    if @site.update_attributes(permitted_params)
      redirect_to site_path(@site)
    else
      flash[:error] = @site.errors.full_messages.to_sentence
      redirect_to edit_site_path(@site)
    end
  end

  def destroy
    @site.destroy
    redirect_to sites_path
  end

  def check
    check_process = ::CheckProcess.new(@site)
    if check_process.ready?
      flash[:success] = 'messages.site_ready'.t
    else
      flash[:alert] = 'messages.site_not_ready'.t
    end
    redirect_to site_path @site
  end

  private

  def permitted_params
    params.require(:site).permit(:name, :description, :url, :protocol, :http_method, :check_interval, :active)
  end

  def load_site
    @site = Site.find(params[:id])
  end

  def load_sites
    @sites = current_user.sites
  end

end
